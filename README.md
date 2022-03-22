# terraform-aws-lb

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-lb/workflows/Verify%20and%20Bump/badge.svg?branch=main)](https://github.com/JamesWoolfenden/terraform-aws-lb)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-lb.svg)](https://github.com/JamesWoolfenden/terraform-aws-lb/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-lb.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-lb/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-lb/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-lb&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-lb/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-lb&benchmark=INFRASTRUCTURE+SECURITY)

Terraform module.

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

This is just a basic example.

Include this repository as a module in your existing terraform code:

```hcl
module "lb" {
  source      = "JamesWoolfenden/lb/aws"
  version     = "0.0.4"
  common_tags = var.common_tags
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.25.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_lb.examplea](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) | resource |
| [aws_lb_listener.examplea](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_lb_listener_rule.examplea](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener_rule) | resource |
| [aws_lb_target_group.examplea](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket"></a> [bucket](#input\_bucket) | n/a | `any` | n/a | yes |
| <a name="input_certificate_arn"></a> [certificate\_arn](#input\_certificate\_arn) | n/a | `string` | n/a | yes |
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | This is to help you add tags to your cloud objects | `map(any)` | n/a | yes |
| <a name="input_lb-name"></a> [lb-name](#input\_lb-name) | n/a | `string` | `"test-lb"` | no |
| <a name="input_listener"></a> [listener](#input\_listener) | n/a | `map` | <pre>{<br>  "port": 443<br>}</pre> | no |
| <a name="input_load_balancer_type"></a> [load\_balancer\_type](#input\_load\_balancer\_type) | Pick your Load balancer type | `string` | `"application"` | no |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | n/a | `string` | `"HTTPS"` | no |
| <a name="input_rule"></a> [rule](#input\_rule) | n/a | `list` | <pre>[<br>  {<br>    "path_pattern": [<br>      "/static/*"<br>    ]<br>  },<br>  {<br>    "host_header": [<br>      "example.com"<br>    ]<br>  }<br>]</pre> | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | n/a | `list(any)` | n/a | yes |
| <a name="input_ssl_policy"></a> [ssl\_policy](#input\_ssl\_policy) | n/a | `string` | `"ELBSecurityPolicy-TLS-1-2-2017-01"` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | n/a | `list(any)` | n/a | yes |
| <a name="input_target_port"></a> [target\_port](#input\_target\_port) | n/a | `number` | `80` | no |
| <a name="input_target_protocol"></a> [target\_protocol](#input\_target\_protocol) | n/a | `string` | `"HTTPS"` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-aws-lb/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-aws-lb/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2022 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-lb&url=https://github.com/JamesWoolfenden/terraform-aws-lb
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-lb&url=https://github.com/JamesWoolfenden/terraform-aws-lb
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-aws-lb
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-aws-lb
[share_email]: mailto:?subject=terraform-aws-lb&body=https://github.com/JamesWoolfenden/terraform-aws-lb

## Costs

```text
Monthly cost estimate

Project: .

 Name                                       Monthly Qty  Unit         Monthly Cost

 aws_s3_bucket.logging
 ├─ Standard
 │  ├─ Storage                                        0  GB-months           $0.00
 │  ├─ PUT, COPY, POST, LIST requests                 0  1k requests         $0.00
 │  ├─ GET, SELECT, and all other requests            0  1k requests         $0.00
 │  ├─ Select data scanned                            0  GB-months           $0.00
 │  └─ Select data returned                           0  GB-months           $0.00
 ├─ Intelligent tiering
 │  ├─ Storage (frequent access)                      0  GB-months           $0.00
 │  ├─ Storage (infrequent access)                    0  GB-months           $0.00
 │  ├─ Monitoring and automation                      0  1k objects          $0.00
 │  ├─ PUT, COPY, POST, LIST requests                 0  1k requests         $0.00
 │  ├─ GET, SELECT, and all other requests            0  1k requests         $0.00
 │  ├─ Lifecycle transition                           0  1k requests         $0.00
 │  ├─ Select data scanned                            0  GB-months           $0.00
 │  ├─ Select data returned                           0  GB-months           $0.00
 │  └─ Early delete (within 30 days)                  0  GB-months           $0.00
 ├─ Standard - infrequent access
 │  ├─ Storage                                        0  GB-months           $0.00
 │  ├─ PUT, COPY, POST, LIST requests                 0  1k requests         $0.00
 │  ├─ GET, SELECT, and all other requests            0  1k requests         $0.00
 │  ├─ Lifecycle transition                           0  1k requests         $0.00
 │  ├─ Retrievals                                     0  GB-months           $0.00
 │  ├─ Select data scanned                            0  GB-months           $0.00
 │  └─ Select data returned                           0  GB-months           $0.00
 ├─ One zone - infrequent access
 │  ├─ Storage                                        0  GB-months           $0.00
 │  ├─ PUT, COPY, POST, LIST requests                 0  1k requests         $0.00
 │  ├─ GET, SELECT, and all other requests            0  1k requests         $0.00
 │  ├─ Lifecycle transition                           0  1k requests         $0.00
 │  ├─ Retrievals                                     0  GB-months           $0.00
 │  ├─ Select data scanned                            0  GB-months           $0.00
 │  └─ Select data returned                           0  GB-months           $0.00
 ├─ Glacier
 │  ├─ Storage                                        0  GB-months           $0.00
 │  ├─ PUT, COPY, POST, LIST requests                 0  1k requests         $0.00
 │  ├─ GET, SELECT, and all other requests            0  1k requests         $0.00
 │  ├─ Lifecycle transition                           0  1k requests         $0.00
 │  ├─ Retrieval requests (standard)                  0  1k requests         $0.00
 │  ├─ Retrievals (standard)                          0  GB-months           $0.00
 │  ├─ Select data scanned (standard)                 0  GB-months           $0.00
 │  ├─ Select data returned (standard)                0  GB-months           $0.00
 │  ├─ Retrieval requests (expedited)                 0  1k requests         $0.00
 │  ├─ Retrievals (expedited)                         0  GB-months           $0.00
 │  ├─ Select data scanned (expedited)                0  GB-months           $0.00
 │  ├─ Select data returned (expedited)               0  GB-months           $0.00
 │  ├─ Retrieval requests (bulk)                      0  1k requests         $0.00
 │  ├─ Retrievals (bulk)                              0  GB-months           $0.00
 │  ├─ Select data scanned (bulk)                     0  GB-months           $0.00
 │  ├─ Select data returned (bulk)                    0  GB-months           $0.00
 │  └─ Early delete (within 90 days)                  0  GB-months           $0.00
 └─ Glacier deep archive
    ├─ Storage                                        0  GB-months           $0.00
    ├─ PUT, COPY, POST, LIST requests                 0  1k requests         $0.00
    ├─ GET, SELECT, and all other requests            0  1k requests         $0.00
    ├─ Lifecycle transition                           0  1k requests         $0.00
    ├─ Retrieval requests (standard)                  0  1k requests         $0.00
    ├─ Retrievals (standard)                          0  GB-months           $0.00
    ├─ Retrieval requests (bulk)                      0  1k requests         $0.00
    ├─ Retrievals (bulk)                              0  GB-months           $0.00
    └─ Early delete (within 180 days)                 0  GB-months           $0.00

 module.lb.aws_lb.examplea
 ├─ Application load balancer                       730  hours              $19.32
 └─ Load balancer capacity units                      0  LCU-hours           $0.00

 PROJECT TOTAL                                                              $19.32
```

WIP

https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies
