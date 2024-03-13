data "aws_ami" "data_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}


resource "aws_instance" "ec2" {
  ami           = data.aws_ami.data_ami.id
  key_name      = var.key_name
  instance_type = var.instance_type
  tags = {
    Name = "ec2-${var.tag}"
  }
}

