module "lb" {
  source          = "../../"
  access_logs     = true
  common_tags     = var.common_tags
  certificate_arn = "arn:aws:acm:eu-west-2:680235478471:certificate/ac27a014-f902-4fba-a2ce-37320747646c"
  ssl_policy      = "ELBSecurityPolicy-TLS-1-2-2017-01"
  bucket          = aws_s3_bucket.logging.bucket
  vpc_id          = "vpc-00ea5eff890b0e212"
  security_groups = ["sg-06b8c96aaccf3a2a1"]
  subnet_ids      = ["subnet-09ff91b5b0adb1fd4", "subnet-05e87623a2a5c41f0"]
}
