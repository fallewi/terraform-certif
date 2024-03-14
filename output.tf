output "instance_pub_ip_addr" {
  value = aws_eip.lewis_eip.public_ip
}

output "instance_pub_dns" {
  value = aws_eip.lewis_eip.public_dns
}
