provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "intro" {
  ami = "ami-049a62eb90480f276"
  instance_type = "t2.micro"
  availability_zone = "ap-south-1a"
  key_name = nexus
  vpc_security_group_ids = ["sg-0c64a2400436ce6b9"]
  tags = {
    Name = "dev-instance"
  }
}