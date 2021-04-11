resource "aws_lb" "examplea" {
  name = var.lb-name
  access_logs {
    bucket  = var.bucket
    enabled = true
  }
  load_balancer_type         = var.load_balancer_type
  drop_invalid_header_fields = true
  security_groups            = var.security_groups
  subnets                    = var.subnet_ids
  tags                       = var.common_tags
}

variable "load_balancer_type" {
  type        = string
  default     = "application"
  description = "Pick your Load balancer type"
  validation {
    condition     = can(regex("application|gateway|network", var.load_balancer_type))
    error_message = "The type of load balancer to create. Possible values are application, gateway, or network."
  }
}
