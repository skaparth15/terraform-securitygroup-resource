resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = var.expense_vpc_id

  tags = {
    Name = var.sg_name
  }



  dynamic "egress"  {
    for_each = var.outbound-rules
    content{
        from_port        = egress.value["from_port"]
        to_port          = egress.value["to_port"]
        protocol         = egress.value["protocol"]
        cidr_blocks      = egress.value["outbound-rules"]
        ipv6_cidr_blocks = egress.value["ipv6_cidr_blocks"]
  }
}


}