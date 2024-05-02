output "security_group" {
  value = aws_default_security_group.default-sg
}
output "instance" {
  value = aws_instance.myapp-server2
}
