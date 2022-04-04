variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR range."
}

variable "subnet_public_1_cidr" {
  type        = string
  description = "Public Subnet 1 CIDR range."
}

variable "subnet_private_1_cidr" {
  type        = string
  description = "Private Subnet 1 CIDR range."
}

variable "subnet_private_2_cidr" {
  type        = string
  description = "Private Subnet 2 CIDR range."
}
