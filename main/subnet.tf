resource "aws_subnet" "lab_subnet_practice_subnet" {
  vpc_id            = aws_vpc.lab_vpc_practice_vpc.id
  cidr_block       = "10.0.1.0/24"
  availability_zone = "us-east-2a"
}