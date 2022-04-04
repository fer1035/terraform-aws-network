output "vpc_id" {
  value       = aws_vpc.vpc.id
  description = "VPC ID."
}

output "public_subnet_1" {
  value       = aws_subnet.public_1.id
  description = "ID for Public Subnet 1."
}

output "private_subnet_1" {
  value       = aws_subnet.private_1.id
  description = "ID for Private Subnet 1."
}

output "private_subnet_2" {
  value       = aws_subnet.private_2.id
  description = "ID for Private Subnet 2."
}
