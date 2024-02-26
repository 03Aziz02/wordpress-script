# Creating EC2 Instance
resource "aws_instance" "wordpress" {
  ami                         = "ami-07761f3ae34c4478d"
  instance_type               = "t2.micro"
  key_name                    = "MK"
  vpc_security_group_ids      = [aws_security_group.ec2-SG.id]
  subnet_id                   = aws_subnet.subnet-1.id
  associate_public_ip_address = true
  user_data                   = file("data.sh")

  tags = {
    Name = "terraform"
  }
}
