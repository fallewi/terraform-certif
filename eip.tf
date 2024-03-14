resource "aws_eip" "lewis_eip" {
  #instance = aws_instance.ec2.id
  domain = "vpc"
}


resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.ec2.id
  allocation_id = aws_eip.lewis_eip.id
}
