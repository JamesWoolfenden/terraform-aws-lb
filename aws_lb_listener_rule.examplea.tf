resource "aws_lb_listener_rule" "examplea" {
  listener_arn = aws_lb_listener.examplea.arn
  priority     = 100

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.examplea.arn
  }

  condition {
    path_pattern {
      values = var.rule[0]["path_pattern"]
    }
  }

  condition {
    host_header {
      values = var.rule[1]["host_header"]
    }
  }
}
