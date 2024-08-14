resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
}

resource "aws_security_group" "sg" {
  name        = var.sg_name
  description = "Security Group for EC2 instance"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    description      = "Allow SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}

output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "security_group_id" {
  value = aws_security_group.sg.id
}
