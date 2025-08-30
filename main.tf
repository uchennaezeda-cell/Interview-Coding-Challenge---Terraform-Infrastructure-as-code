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

module "gateways" {
  source            = "./modules/networking/gateways"
  vpc_id            = module.vpc.vpc_id
  nat_subnet_ids    = module.subnets.public_subnet_ids
  nat_gateway_count = length(module.subnets.public_subnet_ids)
  igw_tags          = var.igw_tags
  nat_eip_tags      = var.nat_eip_tags
  nat_gw_tags       = var.nat_gw_tags
  project           = var.project
  environment       = var.environment
}

module "route_tables" {
  source                   = "./modules/networking/route-tables"
  vpc_id                   = module.vpc.vpc_id
  igw_id                   = module.gateways.igw_id
  nat_gateway_ids          = module.gateways.nat_gateway_ids
  public_subnet_ids        = module.subnets.public_subnet_ids
  private_subnet_ids       = module.subnets.private_subnet_ids
  public_tags              = var.public_route_table_tags
  private_tags             = var.private_route_table_tags
  project                  = var.project
  environment              = var.environment
}