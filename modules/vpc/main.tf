# VPC Module - Will be fully implemented in Story 3.1
# This is the skeleton structure

terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

locals {
  name = "${var.project_name}-${var.environment}"
}

# TODO: Story 3.1 - Implement VPC
# - VPC with DNS support
# - Public subnets (2 AZs)
# - Private subnets (2 AZs)
# - Internet Gateway
# - Single NAT Gateway (cost-optimized)
# - Route tables
# - S3 VPC Endpoint
