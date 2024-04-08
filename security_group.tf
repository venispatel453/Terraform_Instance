# Public security group
resource "aws_security_group" "public" {
  name = "${var.env}-public-sg"
  description = "Public Security Group"
  vpc_id = var.vpc_id
}

# private security group

resource "aws_security_group" "private" {
  name = "${var.env}-private-sg"
  description = "private Security Group"
  vpc_id = var.vpc_id
}