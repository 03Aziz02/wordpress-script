resource "aws_instance" "WORDPRESS" {
  ami           = "ami-0cf7b2f456cd5efd4"
  instance_type = "t2.micro"

  key_name                    = "new"
  vpc_security_group_ids      = [aws_security_group.sg1.id]
  subnet_id                   = aws_subnet.public-subnet1.id
  associate_public_ip_address = true
  user_data                   = file("data.sh")
  tags = {
    Name = "wordpress"
  }
}
