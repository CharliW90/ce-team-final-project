variable "vpc_name" {
  description = "Name for the VPC"
  type = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type = string
  validation {
    condition     = can(cidrhost(var.vpc_cidr, 0))
    error_message = "Must be valid IPv4 CIDR."
  }
}

variable "vpc_private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type = list(string)
}

variable "vpc_public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type = list(string)
}

variable "vpc_nat_gateway" {
  description = "(Boolean) Whether or not to include a NAT Gateway"
  type = bool
  default = true
}

variable "vpc_single_nat_gateway" {
  description = "(Boolean) Whether or not to use a single NAT Gateway"
  type = bool
  default = true
}

variable "vpc_dns_hostnames" {
  description = "(Boolean) Whether or not to map DNS hostnames"
  type = bool
  default = true
}

variable "cluster_name" {
  description = "Name of the cluster to be provisioned within the VPC"
  type = string
}

variable "cluster_version" {
  description = "Which version of kubernetes to use"
  type = string
  default = "1.29"
}

variable "public_cluster" {
  description = "(Boolean) Whether or not to make the cluster public"
  type = bool
  default = true
}

variable "cluster_default_ami" {
  description = "Default AMI to use for EKS Cluster nodes"
  type = string
  default = "AL2_x86_64"
}

variable "cluster_default_instance" {
  description = "Default instance types to use for EKS Cluster nodes"
  type = list(string)
  default = [ "t3.small" ]
}

variable "cluster_min_size" {
  description = "Minimum size of node group"
  type = number
  default = 1
}

variable "cluster_max_size" {
  description = "Maximum size of node group"
  type = number
  default = 3
}

variable "cluster_desired_size" {
  description = "Desired size of node group"
  type = number
  default = 2
}