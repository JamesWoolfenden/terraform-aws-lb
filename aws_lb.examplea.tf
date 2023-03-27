resource "aws_lb" "examplea" {
  # checkov:skip=CKV_AWS_150: ADD REASON
  # checkov:skip=CKV2_AWS_28: simple example
  # tfsec ios complaining about the lb being publicly exposed, this is it intended purpose.
  # tfsec:ignore:AWS005
  name = var.lb-name
  access_logs {
    bucket  = var.bucket
    enabled = var.access_logs
  }
  load_balancer_type         = var.load_balancer_type
  drop_invalid_header_fields = true
  security_groups            = var.security_groups
  subnets                    = var.subnet_ids
  tags                       = var.common_tags
}


variable "access_logs" {
  type=bool
  default=true
}