resource "aws_default_security_group" "allow_tls" {
  vpc_id = aws_vpc.lab_vpc_practice_vpc.id
}
resource "aws_security_group_rule" "allow_tls_ipv4" {
  type = "ingress"
  security_group_id = aws_default_security_group.allow_tls.id
  cidr_blocks    = [aws_vpc.lab_vpc_practice_vpc.cidr_block]
  from_port       = 443
  to_port         = 443
  protocol        = "tcp"
}



resource "aws_vpc_security_group_egress_rule" "allow_tls_outbound_ipv4" {
  security_group_id = aws_default_security_group.allow_tls.id
  cidr_ipv4       = "0.0.0.0/0"
  ip_protocol = "-1"
}

