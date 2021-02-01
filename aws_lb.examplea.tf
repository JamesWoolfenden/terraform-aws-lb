resource "aws_lb" "examplea" {
  name = var.lb-name
  access_logs {
    bucket  = var.bucket
    enabled = true
  }
  security_groups = var.security_groups
  subnets         = var.subnet_ids
  tags            = var.common_tags
}
