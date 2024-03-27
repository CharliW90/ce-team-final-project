output "id" {
  description = "ID for the VPC"
  value = module.aws_vpc.vpc_id
}

output "private_subnets" {
  description = "Private Subnets available"
  value = module.aws_vpc.private_subnets
}

output "public_subnets" {
  description = "Public Subnets available"
  value = module.aws_vpc.public_subnets
}