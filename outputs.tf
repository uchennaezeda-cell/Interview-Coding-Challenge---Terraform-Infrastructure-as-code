output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.subnets.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.subnets.private_subnet_ids
}

output "igw_id" {
  value = module.gateways.igw_id
}

output "nat_gateway_ids" {
  value = module.gateways.nat_gateway_ids
}