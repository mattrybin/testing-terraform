output "instance_public_dns" {
  value = "http://${aws_eip.ip.public_dns}"
}