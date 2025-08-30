output "igw_id" {
  value = aws_internet_gateway.this.id
}

output "nat_gateway_ids" {
  value = aws_nat_gateway.this[*].id
}

output "nat_eip_public_ips" {
  value = aws_eip.nat[*].public_ip
}
