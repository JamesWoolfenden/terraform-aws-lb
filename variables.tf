variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "listener" {
  default = {
    port = 443
    default_action = {
      type = "fixed-response"
      fixed_response = [{
        content_type = "text/plain"
        message_body = "Fixed response content"
        status_code  = "200"
      }]
    }
  }
}

variable "certificate_arn" {
  type = string
}

variable "rule" {
  default = [{
    path_pattern = ["/static/*"]
    },
    {
      host_header = ["example.com"]
  }]
}

variable "protocol" {
  type    = string
  default = "HTTPS"
}

variable "ssl_policy" {
  type    = string
  default = "ELBSecurityPolicy-TLS-1-2-2017-01"
}

variable "bucket" {
  default = "myloggingbucket"
}

variable "lb-name" {
  default = "test-lb"
}
