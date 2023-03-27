resource "aws_lb_target_group" "examplea" {
  name     = var.lb-name
  port     = var.target_port
  protocol = var.target_protocol
  vpc_id   = var.vpc_id

  health_check {
    path    = var.healthcheck_path
    matcher = "200"
  }
}

variable "target_port" {
  type    = number
  default = 80
}

variable "healthcheck_path" {
  type    = string
  default = "/"
}

variable "target_protocol" {
  type    = string
  default = "HTTPS"
}
