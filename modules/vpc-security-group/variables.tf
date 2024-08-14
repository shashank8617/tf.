variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "sg_name" {
  description = "The name of the security group"
  type        = string
  default     = "ec2-security-group"
}
