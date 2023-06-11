resource "aws_instance" "dev-ins" {
  ami = var.AMIS[var.REGION]
  instance_type = "t2.micro"
  availability_zone = var.ZONE1
  key_name = "nexus"
  vpc_security_group_ids = ["sg-0c64a2400436ce6b9"]
  tags = {
    Name = "dev-instance"
  }
}