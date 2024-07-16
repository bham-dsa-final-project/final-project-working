resource "aws_vpc" "vpcname_dev" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name        = "vpcname_dev"
    Environment = "dev"
    Provider    = "terraform"
  }
}

resource "aws_subnet" "public_a" {
  vpc_id                  = aws_vpc.vpcname_dev.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "eu-west-2a"
  map_public_ip_on_launch = true

  tags = {
    Name        = "vpcname_dev_public_a"
    Environment = "dev"
    Provider    = "terraform"
  }
}

resource "aws_subnet" "public_b" {
  vpc_id                  = aws_vpc.vpcname_dev.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "eu-west-2b"
  map_public_ip_on_launch = true

  tags = {
    Name        = "vpcname_dev_public_b"
    Environment = "dev"
    Provider    = "terraform"
  }
}

resource "aws_subnet" "private_a" {
  vpc_id            = aws_vpc.vpcname_dev.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "eu-west-2a"
  tags = {
    Name        = "vpcname_dev_private_a"
    Environment = "dev"
    Provider    = "terraform"
  }
}

resource "aws_subnet" "private_b" {
  vpc_id            = aws_vpc.vpcname_dev.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "eu-west-2b"
  tags = {
    Name        = "vpcname_dev_private_b"
    Environment = "dev"
    Provider    = "terraform"
  }
}

resource "aws_subnet" "private_c" {
  vpc_id            = aws_vpc.vpcname_dev.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "eu-west-2c"
  tags = {
    Name        = "vpcname_dev_private_c"
    Environment = "dev"
    Provider    = "terraform"
  }
}
resource "aws_internet_gateway" "vpcname_dev_igw" {
  vpc_id = aws_vpc.vpcname_dev.id
}
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.vpcname_dev.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpcname_dev_igw.id
  }

  tags = {
    Name        = "vpcname_dev_public_rt"
    Environment = "dev"
    Provider    = "terraform"
  }
}

resource "aws_route_table_association" "public_a_rta" {
  subnet_id      = aws_subnet.public_a.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "public_b_rta" {
  subnet_id      = aws_subnet.public_b.id
  route_table_id = aws_route_table.public_rt.id
}
