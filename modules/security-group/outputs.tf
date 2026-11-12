output "security_group_id" {
  description = "Web Security Group ID"
  value       = aws_security_group.web_sg.id
}

output "security_group_name" {
  description = "Web Security Group Name"
  value       = aws_security_group.web_sg.name
}