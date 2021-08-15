output "dev4_ips" {
  value = aws_instance.hakamada-dev4.public_ip
}

output "dev3_ips" {
  value = aws_instance.hakamada-dev3.public_ip
}
