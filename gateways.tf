resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
}

/* resource "aws_internet_gateway_attachment" "igw_attachment" {
  internet_gateway_id = aws_internet_gateway.igw.id
  vpc_id              = aws_vpc.vpc.id
}

resource "aws_route_table_association" "igw" {
  gateway_id     = aws_internet_gateway.igw.id
  route_table_id = aws_route_table.public.id
} */

resource "aws_egress_only_internet_gateway" "egress" {
  vpc_id = aws_vpc.vpc.id
}

resource "aws_network_interface" "nat_eni" {
  subnet_id = aws_subnet.public_1.id
}

resource "aws_eip" "eip" {
  vpc               = true
  network_interface = aws_network_interface.nat_eni.id
}

resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public_1.id
  depends_on = [
    aws_internet_gateway.igw
  ]
}
