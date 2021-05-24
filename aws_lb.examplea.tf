resource "aws_lb" "examplea" {
  # checkov:skip=CKV_AWS_150: ADD REASON
  # tfsec ios complaining about the lb being publicly exposed, this is it intended purpose.
  # tfsec:ignore:AWS005
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
