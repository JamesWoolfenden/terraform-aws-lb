
resource "aws_lb_listener" "examplea" {
  load_balancer_arn = aws_lb.examplea.arn
  port              = var.listener["port"]
  protocol          = var.protocol
  ssl_policy        = var.ssl_policy
  certificate_arn   = var.certificate_arn


  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.examplea.arn
  }
}
