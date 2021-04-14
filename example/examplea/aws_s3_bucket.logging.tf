resource "aws_s3_bucket" "logging" {
  # tfsec:ignore:AWS002
  # tfsec:ignore:AWS077
  # checkov:skip=CKV_AWS_21: "Ensure all data stored in the S3 bucket have versioning enabled"
  # checkov:skip=CKV_AWS_52: "Ensure S3 bucket has MFA delete enabled"
  # checkov:skip=CKV_AWS_18: "Ensure the S3 bucket has access logging enabled"
  # checkov:skip=CKV_AWS_144: "Its a logging bucket"
  # checkov:skip=CKV_AWS_145: "Its a logging bucket"

  bucket = "logging-lb-${data.aws_caller_identity.current.account_id}"
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  tags = var.common_tags
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
                "AWS": "arn:aws:iam::652711504416:root"
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
