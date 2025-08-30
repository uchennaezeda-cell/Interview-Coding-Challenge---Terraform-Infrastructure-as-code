resource "aws_security_group" "web_sg" {
  name        = "web-sg"
  description = "Allow HTTP inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    description      = "HTTP from anywhere"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = merge(var.tags, {
    Name = "${var.project}-${var.environment}-web-sg"
  })
}
