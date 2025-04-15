resource "aws_vpc" "vq8_vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "vq8-vpc"
  }
}

resource "aws_internet_gateway" "vq8_igw" {
  vpc_id = aws_vpc.vq8_vpc.id

  tags = {
    Name = "vq8-InternetGateway"
  }
}

resource "aws_subnet" "vq8_subnet" {
  vpc_id                  = aws_vpc.vq8_vpc.id
  cidr_block              = var.public_subnet
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "vq8-subnet"
  }
}

resource "aws_route_table" "vq8_route" {
  vpc_id = aws_vpc.vq8_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vq8_igw.id
  }

  tags = {
    Name = "vq8-route"
  }
}

resource "aws_route_table_association" "subnet" {
  subnet_id      = aws_subnet.vq8_subnet.id
  route_table_id = aws_route_table.vq8_route.id
}
