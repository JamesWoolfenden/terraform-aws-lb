variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "listener" {
  default = {
    port = 443
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
}

variable "lb-name" {
  default = "test-lb"
}

variable "vpc_id" {
  type = string
}

variable "subnet_ids" {
  type = list(any)
}

variable "security_groups" {
  type = list(any)
}
