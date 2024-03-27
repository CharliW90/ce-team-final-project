vpc_name = "eks-vpc"
vpc_cidr = "10.0.0.0/16"

vpc_private_subnet_cidrs = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
vpc_public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]

cluster_name = "deployment"


cluster_min_size = 2
cluster_max_size = 2
cluster_desired_size = 2

