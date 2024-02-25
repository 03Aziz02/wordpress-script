resource "aws_route_table" "route1" {
  vpc_id = aws_vpc.Vpc.id

  tags = {
    Name = "routetable"
  }
}
