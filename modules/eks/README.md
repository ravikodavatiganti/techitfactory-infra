
### Step 6.2: Update EKS Module README
```bash
# EKS Module

Creates a production-ready EKS cluster with managed node groups.

## Features
- EKS with OIDC for IRSA
- Managed Node Group (t3.medium)
- Cluster Autoscaler support
- EBS CSI Driver
- SSO access via aws-auth

## Usage

```hcl
module "eks" {
  source = "../../modules/eks"

  project_name  = "techitfactory"
  environment   = "dev"
  vpc_id        = module.vpc.vpc_id
  subnet_ids    = module.vpc.private_subnet_ids
  
  node_desired_size = 2
  node_min_size     = 1
  node_max_size     = 4
}
