module "lb" {
  source          = "../../"
  common_tags     = var.common_tags
  certificate_arn = "arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4"
  ssl_policy      = "ELBSecurityPolicy-TLS-1-2-2017-01"
}
