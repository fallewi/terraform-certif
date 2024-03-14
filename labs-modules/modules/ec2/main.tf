data "aws_ami" "data_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}


resource "aws_instance" "ec2" {
  ami                    = data.aws_ami.data_ami.id
  key_name               = var.key_name
  instance_type          = var.instance_type
  vpc_security_group_ids = var.sg[0]
  tags = {
    Name = "ec2-${var.tag}"
  }
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("lewis_key.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras enable nginx1.12",
      "sudo yum -y install nginx",
      "sudo systemctl start nginx"
    ]
  }
  provisioner "local-exec" {
    command = "echo The server's IP address is ${self.private_ip} >> private_ips.txt"
  }
}

