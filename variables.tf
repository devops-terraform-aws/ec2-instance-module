variable "ami" {
  type        = string
  description = "AMI to use for the instance."
}

variable "key_name" {
  type        = string
  description = "Key name of the Key Pair to use for the instance."
}

variable "instance_type" {
  type        = string
  description = "Instance type to use for the instance. Updates to this field will trigger a stop/start of the EC2 instance."
}

variable "security_groups" {
  type        = list(string)
  description = "List of security groups to associate with."
  default     = null
}

variable "region" {
  type        = string
  description = "Specify the region to for resources to be created."
}

variable "user_data" {
  type        = string
  description = "User data to provide when launching the instance. Do not pass gzip-compressed data via this argument."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "The name to assign to the resource."
  default     = {}
}

variable "vpc_security_group_ids" {
  type        = list(string)
  description = "List of vpc to associate with"
  default     = null
}

variable "get_password_data" {
  type        = bool
  description = "If true, wait for password data to be available and retrieve it."
  default     = false
}

variable "subnet_id" {
  type        = string
  description = "The VPC Subnet ID to launch in."
  default     = null
}