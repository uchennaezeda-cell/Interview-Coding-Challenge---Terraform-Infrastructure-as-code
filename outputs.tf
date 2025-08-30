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

output "public_route_table_id" {
  value = module.route_tables.public_route_table_id
}

output "private_route_table_ids" {
  value = module.route_tables.private_route_table_ids
}

output "security_group_id" {
  value = module.security_group.security_group_id
}

output "ec2_instance_id" {
  value = module.ec2.instance_id
}

output "ec2_public_ip" {
  value = module.ec2.public_ip
}
