
resource "aws_lb_listener" "examplea" {
  load_balancer_arn = aws_lb.examplea.arn
  port              = var.listener["port"]
  protocol          = var.protocol
  ssl_policy        = var.ssl_policy
  certificate_arn   = var.certificate_arn

  default_action {
    type = var.listener.default_action["type"]

    fixed_response {
      content_type = var.listener.default_action.fixed_response[0]["content_type"]
      message_body = var.listener.default_action.fixed_response[0]["message_body"]
      status_code  = var.listener.default_action.fixed_response[0]["status_code"]
    }
  }
}
