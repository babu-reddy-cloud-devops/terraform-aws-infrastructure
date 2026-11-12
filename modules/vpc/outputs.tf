# VPC ID
output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

# VPC CIDR
output "vpc_cidr" {
  description = "VPC CIDR block"
  value       = aws_vpc.main.cidr_block
}

# Public Subnet ID
output "public_subnet_id" {
  description = "Public Subnet ID"
  value       = aws_subnet.public.id
}

# Private Subnet ID
output "private_subnet_id" {
  description = "Private Subnet ID"
  value       = aws_subnet.private.id
}