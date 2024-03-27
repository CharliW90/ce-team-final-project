variable "vpc_name" {
  description = "Name for the VPC"
  type = string
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type = string
  validation {
    condition     = can(cidrhost(var.cidr_block, 0))
    error_message = "Must be valid IPv4 CIDR."
  }
}

variable "availability_zones" {
  description = "Availability zones to use for the VPC"
  type = list(string)
}

variable "private_subnet_cidr_blocks" {
  description = "CIDR blocks for private subnets"
  type = list(string)
}

variable "public_subnet_cidr_blocks" {
  description = "CIDR blocks for public subnets"
  type = list(string)
}

variable "nat_gateway" {
  description = "(Boolean) Whether or not to include a NAT Gateway"
  type = bool
}

variable "single_nat_gateway" {
  description = "(Boolean) Whether or not to use a single NAT Gateway"
  type = bool
}

variable "dns_hostnames" {
  description = "(Boolean) Whether or not to map DNS hostnames"
  type = bool
}

variable "cluster_name" {
  description = "Name of the cluster to be provisioned within the VPC"
  type = string
}