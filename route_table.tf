# AWS Public Route Table
# Permitir todo el tráfico de Entrada al Internet_Gateway
resource "aws_route_table" "rt_public1" {
  vpc_id = aws_vpc.vpc_pragma.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw_pragma.id
  }

  tags = merge(
    var.info_tags, {
      Name = var.RouteTable[0]
      # RT_Public
  })
}

# Permitir todo el tráfico de Entrada al Internet_Gateway
resource "aws_route_table" "rt_public2" {
  vpc_id = aws_vpc.vpc_pragma.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw_pragma.id
  }

  tags = merge(
    var.info_tags, {
      Name = var.RouteTable[1]
      # RT_Private
  })
}

# AWS Route Table Association
# Public Subnet
resource "aws_route_table_association" "public_subnet1" {
  subnet_id      = aws_subnet.subnet_public1.id
  route_table_id = aws_route_table.rt_public1.id
}

# Private Subnet
resource "aws_route_table_association" "public_subnet2" {
  subnet_id      = aws_subnet.subnet_public2.id
  route_table_id = aws_route_table.rt_public2.id
}