# VPC Outputs
output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "vpc_cidr" {
  description = "VPC CIDR block"
  value       = module.vpc.vpc_cidr
}

# EC2 Outputs
output "ec2_instance_id" {
  description = "EC2 instance ID"
  value       = module.ec2.ec2_instance_id
}

output "ec2_public_ip" {
  description = "EC2 public IP address"
  value       = module.ec2.ec2_public_ip
}

output "ec2_public_dns" {
  description = "EC2 public DNS"
  value       = module.ec2.ec2_public_dns
}