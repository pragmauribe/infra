# Resource: aws_vpc
# Provides a VPC resource
resource "aws_vpc" "vpc_pragma" {
  cidr_block           = var.CIDR[0]
  enable_dns_hostnames = true

  tags = merge(
    var.info_tags, {
      Name = "vpc_pragma"
    }
  )
}

# Resource: aws_internet_gateway
# Provides a resource to create a VPC Internet Gateway
resource "aws_internet_gateway" "gw_pragma" {
  vpc_id = aws_vpc.vpc_pragma.id

  tags = merge(
    var.info_tags, {
      Name = "gateway_pragma"
    }
  )
}