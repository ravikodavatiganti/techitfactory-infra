# EKS Module - Will be fully implemented in Story 4.1
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
  cluster_name = "${var.project_name}-${var.environment}"
}

# TODO: Story 4.1 - Implement EKS
# - EKS Cluster with OIDC issuer
# - Managed Node Group
# - Cluster logging
# - aws-auth ConfigMap for SSO
# - Cluster Autoscaler IRSA
# - EBS CSI Driver IRSA
# - metrics-server
