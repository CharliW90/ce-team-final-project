variable "cluster_name" {
  description = "(Optional) Name for the cluster, can be used later to reference by tags"
  type = string
}

variable "cluster_version" {
  description = "Which version of kubernetes to use"
  type = string
}

variable "vpc_id" {
  description = "ID of the VPC to place this cluster within"
  type = string
}

variable "private_subnets" {
  description = "List of private subnets to use"
  type = list(string)
}

variable "public" {
  description = "(Boolean) Whether or not to make the cluster public"
  type = bool
}

variable "default_ami_type" {
  description = "Default AMI to use for EKS Cluster nodes"
  type = string
}

variable "default_instance_types" {
  description = "Default instance types to use for EKS Cluster nodes"
  type = list(string)
}

variable "deployment_name" {
  description = "Name for the node group"
  type = string
}

variable "min_size" {
  description = "Minimum size of node group"
  type = number
}

variable "max_size" {
  description = "Maximum size of node group"
  type = number
}

variable "desired_size" {
  description = "Desired size of node group"
  type = number
}