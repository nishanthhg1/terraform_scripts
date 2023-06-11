resource "aws_key_pair" "dove-key" {
  key_name = "dove-key"
  public_key = file(dovekey.pub)
}

resource "aws_instance" "dove-instance" {
  ami = var.AMIS[var.REGION]
  instance_type = "t2.micro"
  availability_zone = var.ZONE1
  key_name = aws_key_pair.dove-key.key_name
  vpc_security_group_ids = ["sg-0c64a2400436ce6b9"]
  tags = {
    Name = "dove-instance"
    Project = "vprofile"
  }

  provisioner "file" {
    source = "web.sh"
    destination = "/tmp/web.sh"
  }

  provisioner "remote-exec" {
    inline = [
    "chmod u+x /tmp/web.sh"
    "sudo /tmp/web.sh"
    ]

  }
  connection {
    user = var.USER
    private_key = file(dove-key)
    host = self.public_ip

  }
}