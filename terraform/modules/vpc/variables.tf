variable "name" {
  description = "The name of the project"
  type        = string
  default     = ""
}

variable "cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "The number of availability zones to deploy to"
  type        = list(string)
  default     = []
}

variable "private_subnets" {
  description = "The private subnets to deploy to"
  type        = list(string)
  default     = []
}

variable "public_subnets" {
  description = "The public subnets to deploy to"
  type        = list(string)
  default     = []
}

variable "public_subnet_suffix" {
  description = "The suffix to add to the public subnet name"
  type        = string
  default     = "public"
}

variable "private_subnet_suffix" {
  description = "The suffix to add to the private subnet name"
  type        = string
  default     = "private"
}

variable "enable_nat_gateway" {
  description = "Should the NAT gateway be created?"
  type        = bool
  default     = false
}