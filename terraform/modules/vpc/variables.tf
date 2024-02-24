variable "name" {
  description = "The name of the project"
}

variable "cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "azs" {
  description = "The number of availability zones to deploy to"
  type        = list(string)
}

variable "private_subnets" {
  description = "The private subnets to deploy to"
  type        = list(string)
}

variable "public_subnets" {
  description = "The public subnets to deploy to"
  type        = list(string)
}

variable "enable_nat_gateway" {
  description = "Should the NAT gateway be created?"
  type        = bool
}