resource "aws_vpc" "this" {
  cidr_block           = var.cidr_block
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  tags = merge(var.tags, {
    Name = "${var.project}-${var.environment}-vpc"
  })
}
