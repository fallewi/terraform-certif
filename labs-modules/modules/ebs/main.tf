resource "aws_ebs_volume" "ebs" {
  availability_zone = var.az[0]
  size              = var.size


  tags = {
    Name = "ebs-${var.tag}"
  }
}
