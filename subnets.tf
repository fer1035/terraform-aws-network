resource "aws_subnet" "public_1" {
  vpc_id                          = aws_vpc.vpc.id
  cidr_block                      = var.subnet_public_1_cidr
  assign_ipv6_address_on_creation = true
  map_public_ip_on_launch         = true
}

resource "aws_route_table_association" "public_1" {
  subnet_id      = aws_subnet.public_1.id
  route_table_id = aws_route_table.public.id
}

resource "aws_subnet" "private_1" {
  vpc_id                          = aws_vpc.vpc.id
  cidr_block                      = var.subnet_private_1_cidr
  assign_ipv6_address_on_creation = true
  map_public_ip_on_launch         = false
}

resource "aws_subnet" "private_2" {
  vpc_id                          = aws_vpc.vpc.id
  cidr_block                      = var.subnet_private_2_cidr
  assign_ipv6_address_on_creation = true
  map_public_ip_on_launch         = false
}

resource "aws_route_table_association" "private_1" {
  subnet_id      = aws_subnet.private_1.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private_2" {
  subnet_id      = aws_subnet.private_2.id
  route_table_id = aws_route_table.private.id
}
