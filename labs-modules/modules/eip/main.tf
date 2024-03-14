resource "aws_eip" "lewis_eip" {

  domain = "vpc"
  tags = {
    Name = "eip-${var.tag}"
  }

}



