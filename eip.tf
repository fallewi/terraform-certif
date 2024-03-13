resource "aws_eip" "lewis_eip" {
  instance = aws_instance.ec2.id
  domain   = "vpc"
}
