resource "aws_route_table_association" "route1" {
  subnet_id      = aws_subnet.public-subnet1.id
  route_table_id = aws_route_table.route1.id
}
