resource "aws_internet_gateway" "this" {
  vpc_id = var.vpc_id
  tags = merge(var.igw_tags, {
    Name = "${var.project}-${var.environment}-igw"
  })
}

resource "aws_eip" "nat" {
  count = var.nat_gateway_count
  tags  = var.nat_eip_tags
}

resource "aws_nat_gateway" "this" {
  count         = var.nat_gateway_count
  allocation_id = aws_eip.nat[count.index].id
  subnet_id     = var.nat_subnet_ids[count.index]
  tags = merge(var.nat_gw_tags, {
    Name = "${var.project}-${var.environment}-natgw-${count.index + 1}"
  })
  depends_on    = [aws_internet_gateway.this]
}
