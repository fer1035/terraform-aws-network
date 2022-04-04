data "aws_caller_identity" "current" {}
locals {
  account_id = data.aws_caller_identity.current.account_id
}

variable "region" {
  type        = string
  default     = "us-east-1"
  description = "Working region."
}

variable "tag_Name" {
  type        = string
  description = "Human-friendly name for the project resources."
}

variable "tag_sitecode" {
  type        = string
  description = "Which site the project is attached to."
}

variable "tag_department" {
  type        = string
  description = "Which department owns the project."
}

variable "tag_team" {
  type        = string
  description = "Which team owns the project."
}

variable "tag_tier" {
  type        = string
  description = "Deployment tier for the resources."
}

variable "tag_costcenter" {
  type        = string
  description = "Which cost center the project is attached to."
}

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
