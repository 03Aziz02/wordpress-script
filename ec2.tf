# Creating EC2 Instance
resource "aws_instance" "wordpress" {
  ami                         = "ami-02485f7c96d260d4d"
  instance_type               = "t2.micro"
  key_name                    = "Ireland"
  vpc_security_group_ids      = [aws_security_group.sg.id]
  subnet_id                   = aws_subnet.subnet-1.id
  associate_public_ip_address = true
  user_data                   = file("data.sh")

  tags = {
    Name = "terraform"
  }
}
