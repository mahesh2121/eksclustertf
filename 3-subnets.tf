resource "aws_subnet" "private-1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.0.0/19"
  availability_zone = "ap-south-1a"

  tags = {
    "Name"                             = " Private -1"
    "Kubnernetes.io/role/internal-elb" = "1"
    "kubnernetes.io/cluster/demo"      = "owned"
  }
}


resource "aws_subnet" "private-2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.32.0/19"
  availability_zone = "ap-south-1b"

  tags = {
    "Name"                             = " Private -2"
    "Kubnernetes.io/role/internal-elb" = "1"
    "kubnernetes.io/cluster/demo"      = "owned"
  }
}


resource "aws_subnet" "public-1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.64.0/19"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true

  tags = {
    "Name"                        = " public -1"
    "Kubnernetes.io/role/elb"     = "1"
    "kubnernetes.io/cluster/demo" = "owned"
  }
}

resource "aws_subnet" "public-2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.96.0/19"
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = true

  tags = {
    "Name"                        = " public -2"
    "Kubnernetes.io/role/elb"     = "1"
    "kubnernetes.io/cluster/demo" = "owned"
  }
}


