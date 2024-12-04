# Public Subnet in AZ 1
resource "aws_subnet" "public_az1" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = var.public_subnet_cidr_az1
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet AZ1"
  }
}

# Public Subnet in AZ 2
resource "aws_subnet" "public_az2" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = var.public_subnet_cidr_az2
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet AZ2"
  }
}

# Private Subnet in AZ 1
resource "aws_subnet" "private_az1" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.private_subnet_cidr_az1
  availability_zone = "us-east-1a"

  tags = {
    Name = "Private Subnet AZ1"
  }
}

# Private Subnet in AZ 2
resource "aws_subnet" "private_az2" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.private_subnet_cidr_az2
  availability_zone = "us-east-1b"

  tags = {
    Name = "Private Subnet AZ2"
  }
}