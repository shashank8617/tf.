# output "vpc_id" {
#   description = "vpc-09ce9ecba51495956"
#   value       = aws_vpc.vpc.id
# }

output "security_group_id" {
  description = "sg-0f95baef91ced5f8b"
  value       = aws_security_group.sg.id
}

