data "aws_availability_zones" "azs" {}

module "vpc" {
  source = "./modules/network"

  vpc_name = var.vpc_name
  cidr_block = var.vpc_cidr
  availability_zones = slice(data.aws_availability_zones.azs.names, 0, 3)

  private_subnet_cidr_blocks = var.vpc_private_subnet_cidrs
  public_subnet_cidr_blocks = var.vpc_public_subnet_cidrs

  nat_gateway = var.vpc_nat_gateway
  single_nat_gateway = var.vpc_single_nat_gateway
  dns_hostnames = var.vpc_dns_hostnames

  cluster_name = var.cluster_name
}

module "eks_cluster" {
  source = "./modules/cluster"

  cluster_name = var.cluster_name
  cluster_version = var.cluster_version

  vpc_id = module.vpc.id
  private_subnets = module.vpc.private_subnets
  public = var.public_cluster

  default_ami_type = var.cluster_default_ami
  default_instance_types = var.cluster_default_instance

  deployment_name = var.cluster_name

  min_size = var.cluster_min_size
  max_size = var.cluster_max_size
  desired_size = var.cluster_desired_size
}