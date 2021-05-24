# terraform-aws-lb

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
