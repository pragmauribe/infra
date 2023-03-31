# Public Subnet
resource "aws_subnet" "subnet_public1" {
  vpc_id     = aws_vpc.vpc_pragma.id
  cidr_block = var.CIDR[1] # cidr_block = "10.0.1.0/24"
  # Asignación automática de IP
  map_public_ip_on_launch = true
  # AZ or the subnet (Optional)
  availability_zone = var.az[0] # us-west-2a

  tags = merge(
    var.info_tags, {
      Name = var.subnet[0]
      # Public Subnet
    }
  )
}

# Private Subnet
resource "aws_subnet" "subnet_public2" {
  vpc_id     = aws_vpc.vpc_pragma.id
  cidr_block = var.CIDR[2] # cidr_block = "10.0.2.0/24"
  # Asignación automática de IP
  map_public_ip_on_launch = true
  # AZ or the subnet (Optional)
  availability_zone = var.az[1] # us-west-2a
  tags = merge(
    var.info_tags, {
      Name = var.subnet[1]
      # Private Subnet
    }
  )
}