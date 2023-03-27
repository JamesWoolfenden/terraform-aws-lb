resource "aws_s3_bucket" "logging" {
  # tfsec:ignore:AWS002
  # tfsec:ignore:AWS077
  # checkov:skip=CKV_AWS_19:v4 legacy
  # checkov:skip=CKV2_AWS_41: "Its a logging bucket"
  # checkov:skip=CKV2_AWS_37: "Its a logging bucket"

  # checkov:skip=CKV_AWS_21: "Ensure all data stored in the S3 bucket have versioning enabled"
  # checkov:skip=CKV_AWS_52: "Ensure S3 bucket has MFA delete enabled"
  # checkov:skip=CKV_AWS_18: "Ensure the S3 bucket has access logging enabled"
  # checkov:skip=CKV_AWS_144: "Its a logging bucket"
  # checkov:skip=CKV_AWS_145: "Its a logging bucket"
  # checkov:skip=CKV2_AWS_61

  bucket = "logging-lb-${data.aws_caller_identity.current.account_id}"
  tags   = var.common_tags
}

resource "aws_s3_bucket_server_side_encryption_configuration" "logging" {
  bucket = aws_s3_bucket.logging.bucket

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.example.arn
      sse_algorithm     = "aws:kms"
    }
  }
}


data "aws_caller_identity" "current" {}

resource "aws_s3_bucket_policy" "examplea" {
  bucket = aws_s3_bucket.logging.id

  policy = <<POLICY
{
    "Version": "2012-10-17",
    "Id": "AWSConsole-AccessLogs-Policy-1611836550779",
    "Statement": [
        {
            "Sid": "AWSConsoleStmt-1611836550781",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::${var.ELB_RegionalAccount}:root"
            },
            "Action": "s3:PutObject",
            "Resource": "${aws_s3_bucket.logging.arn}/AWSLogs/${data.aws_caller_identity.current.account_id}/*"
        },
        {
            "Sid": "AWSLogDeliveryWrite",
            "Effect": "Allow",
            "Principal": {
                "Service": "delivery.logs.amazonaws.com"
            },
            "Action": "s3:PutObject",
            "Resource": "${aws_s3_bucket.logging.arn}/AWSLogs/${data.aws_caller_identity.current.account_id}/*",
            "Condition": {
                "StringEquals": {
                    "s3:x-amz-acl": "bucket-owner-full-control"
                }
            }
        },
        {
            "Sid": "AWSLogDeliveryAclCheck",
            "Effect": "Allow",
            "Principal": {
                "Service": "delivery.logs.amazonaws.com"
            },
            "Action": "s3:GetBucketAcl",
            "Resource": "${aws_s3_bucket.logging.arn}"
        }
    ]
}
POLICY
}

resource "aws_s3_bucket_public_access_block" "logging" {
  bucket                  = aws_s3_bucket.logging.id
  restrict_public_buckets = true
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
}


variable "ELB_RegionalAccount" {
  type        = string
  description = "Default account ID for ELB -default is eu-west-2"
  default     = "652711504416"
}
