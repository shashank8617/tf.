provider "aws" {
  region = "ap-south-1"
}

module "vpc_security_group" {
  source    = "./modules/vpc-security-group"
  
#   vpc_cidr = "10.0.0.0/16"
#   sg_name  = "custom-ec2-sg"
}


module "ec2_instance" {
  source              = "./modules/ec2-instance"
  ami_id              = "ami-0d473344347276854"
  instance_type       = "t2.micro"
#   security_group_id   = module.vpc_security_group.security_group_id
#   subnet_id           = "subnet-02d8377a345dd2fcd"  # Replace with actual subnet ID
}
