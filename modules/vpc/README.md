# VPC Module

Creates a production-ready VPC with public/private subnets.

## Features
- Multi-AZ deployment (2 AZs)
- Public subnets for ALB
- Private subnets for EKS nodes
- Single NAT Gateway (cost-optimized for dev)
- S3 VPC Endpoint

## Usage

```hcl
module "vpc" {
  source = "../../modules/vpc"

  project_name       = "techitfactory"
  environment        = "dev"
  vpc_cidr           = "10.0.0.0/16"
  single_nat_gateway = true
  enable_s3_endpoint = true
}

