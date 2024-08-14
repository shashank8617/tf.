resource "aws_instance" "ec2" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  # security_groups             = [var.security_group_id]
#   subnet_id                   = var.subnet_id

  tags = {
    Name = "test1"
  }
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

# variable "security_group_id" {
#   description = "The ID of the security group to attach to the instance"
#   type        = string
#   default     = "value"
# }

# variable "subnet_id" {
#   description = "The ID of the subnet to deploy the instance in"
#   type        = string
# }
