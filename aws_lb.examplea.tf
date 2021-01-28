resource "aws_lb" "examplea" {
  name = var.lb-name
  access_logs {
    bucket  = var.bucket
    enabled = true
  }
  #security_groups    = [aws_security_group.lb_sg.id]
  subnets = var.subnet_ids
}
