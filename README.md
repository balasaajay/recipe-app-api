# Recipe App API

Deploy Infrastructure for hosting django Recipe app API using Terraform on AWS

## AWS Services deployed
EC2, S3, ACM, Route 53, Load Balancer, VPC, subnets, NAT gateway, Internet gateway, Route tables, RDS, ECS, Dynamo DB

## AWS Infra architecture
Infra deployed using Terraform
![Alt text](./deploy/aws_recipe_app_arch.png?raw=true "AWS Arch")

## Getting started

To start project, run:

```
docker-compose up
```

The API will then be available at http://127.0.0.1:8000
