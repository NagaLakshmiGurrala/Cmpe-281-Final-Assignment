resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = var.route_table_name
  }
}

resource "aws_route_table_association" "public_az1_association" {
  subnet_id      = aws_subnet.public_az1.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_az2_association" {
  subnet_id      = aws_subnet.public_az2.id
  route_table_id = aws_route_table.public_route_table.id
}
