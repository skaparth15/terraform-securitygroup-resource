variable "sg_name" {
    type = string

}

variable "outbound-rules" {
  type = list
  default = [
    {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }]
    }



variable "inbound-rules" {
    type = list
  
    }





variable "expense_vpc_id" {
    type = string

    }
