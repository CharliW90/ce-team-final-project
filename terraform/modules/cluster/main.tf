module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.15.2"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  vpc_id                         = var.vpc_id
  subnet_ids                     = var.private_subnets
  cluster_endpoint_public_access = var.public

  eks_managed_node_group_defaults = {
    ami_type = var.default_ami_type
    instance_types = var.default_instance_types
  }

  eks_managed_node_groups = {
    deployment = {
      name = "${var.deployment_name}-1"

      min_size     = var.min_size
      max_size     = var.max_size
      desired_size = var.desired_size
    }
  }
}