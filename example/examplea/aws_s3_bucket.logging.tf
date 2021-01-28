resource "aws_s3_bucket" "logging" {
  bucket = "logging-lb-${data.aws_caller_identity.current.account_id}"
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