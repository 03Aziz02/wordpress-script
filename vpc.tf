resource "aws_vpc" "Vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "VPC"
  }
}
