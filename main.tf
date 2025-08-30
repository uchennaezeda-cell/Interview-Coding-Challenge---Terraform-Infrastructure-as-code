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