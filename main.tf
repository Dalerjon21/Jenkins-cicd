resource "aws_vpc" "main" {
  cidr_block       = "10.10.0.0/16"
  
  tags = {
    Name = "Jenkins-s3"
  }
}

resource "aws_subnet" "pub-sub" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.10.1.0/24"

  tags = {
    Name = "Public-Subnet-J"
  }
}