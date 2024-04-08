# Ingress rules for public security group

resource "aws_security_group_rule" "public_ingress_rules" {
  count = length(var.public_sg_ingress)
  type              = "ingress"
  from_port         = var.public_sg_ingress[count.index].from_port
  to_port           = var.public_sg_ingress[count.index].to_port
  protocol          = var.public_sg_ingress[count.index].protocol
  cidr_blocks       = var.public_sg_ingress[count.index].cidr_blocks
  ipv6_cidr_blocks = var.public_sg_ingress[count.index].ipv6_cidr_blocks
  security_group_id = aws_security_group.public.id
}

# egress rules for public security group

resource "aws_security_group_rule" "public_egress_rules" {
  count = length(var.public_sg_egress)
  type              = "egress"
  from_port         = var.public_sg_egress[count.index].from_port
  to_port           = var.public_sg_egress[count.index].to_port
  protocol          = var.public_sg_egress[count.index].protocol
  cidr_blocks       = var.public_sg_egress[count.index].cidr_blocks
  ipv6_cidr_blocks  = var.public_sg_egress[count.index].ipv6_cidr_blocks
  security_group_id = aws_security_group.public.id
}

# Ingress rules for private security group

resource "aws_security_group_rule" "private_ingress_rules" {
  count = length(var.private_sg_ingress)
  type              = "ingress"
  from_port         = var.private_sg_ingress[count.index].from_port
  to_port           = var.private_sg_ingress[count.index].to_port
  protocol          = var.private_sg_ingress[count.index].protocol
  cidr_blocks       = var.private_sg_ingress[count.index].cidr_blocks
  ipv6_cidr_blocks = var.private_sg_ingress[count.index].ipv6_cidr_blocks
  security_group_id = aws_security_group.private.id
}

# egress rules for private security group

resource "aws_security_group_rule" "private_egress_rules" {
  count = length(var.private_sg_egress)
  type              = "egress"
  from_port         = var.private_sg_egress[count.index].from_port
  to_port           = var.private_sg_egress[count.index].to_port
  protocol          = var.private_sg_egress[count.index].protocol
  cidr_blocks       = var.private_sg_egress[count.index].cidr_blocks
  ipv6_cidr_blocks  = var.private_sg_egress[count.index].ipv6_cidr_blocks
  security_group_id = aws_security_group.private.id
}
