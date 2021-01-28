module "lb" {
  source          = "../../"
  common_tags     = var.common_tags
  certificate_arn = "arn:aws:acm:eu-west-2:680235478471:certificate/772b2402-5d4a-457f-829c-02550c8c9244"
  ssl_policy      = "ELBSecurityPolicy-TLS-1-2-2017-01"
  bucket          = aws_s3_bucket.logging.bucket
  vpc_id          = "vpc-0e2e925de622375b5"
  subnet_ids      = ["subnet-05808ec64faaa18ba", "subnet-0b57d1924ea055989"]
}
