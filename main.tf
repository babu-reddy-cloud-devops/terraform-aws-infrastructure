# VPC Module
module "vpc" {
  source = "./modules/vpc"

  vpc_cidr            = var.vpc_cidr
  vpc_name            = var.project_name
  environment         = var.environment
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
}

# Security Group Module
module "security_group" {
  source = "./modules/security-group"

  vpc_id       = module.vpc.vpc_id
  project_name = var.project_name
  environment  = var.environment
}

# IAM Module
module "iam" {
  source = "./modules/iam"

  project_name = var.project_name
  environment  = var.environment
}

# EC2 Module
module "ec2" {
  source = "./modules/ec2"

  instance_type        = "t2.micro"
  subnet_id            = module.vpc.public_subnet_id
  security_group_id    = module.security_group.security_group_id
  project_name         = var.project_name
  environment          = var.environment
  iam_instance_profile = module.iam.iam_instance_profile_name
}