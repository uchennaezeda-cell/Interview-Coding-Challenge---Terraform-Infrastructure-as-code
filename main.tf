provider "aws" {
  region = var.region
}

data "aws_availability_zones" "available" {}

module "vpc" {
  source     = "./modules/networking/vpc"
  cidr_block = var.vpc_cidr_block
  project     = var.project
  environment = var.environment
  tags       = var.tags
}

module "subnets" {
  source                = "./modules/networking/subnets"
  vpc_id                = module.vpc.vpc_id
  azs                   = slice(data.aws_availability_zones.available.names, 0, 3)
  public_subnet_cidrs   = var.public_subnet_cidrs
  private_subnet_cidrs  = var.private_subnet_cidrs
  public_tags           = var.public_tags
  private_tags          = var.private_tags
  project               = var.project
  environment           = var.environment
}