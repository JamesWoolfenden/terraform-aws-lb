resource "aws_lb" "examplea" {
  name = var.lb-name
  access_logs {
    bucket  = local.logging["bucket"]
    prefix  = local.logging["prefix"]
    enabled = true
  }
}
