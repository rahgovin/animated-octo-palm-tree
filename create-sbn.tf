#create-sbn.tf
 
resource "aws_subnet" "subnet1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.sbn_cidr_block_1
  map_public_ip_on_launch = var.sbn_public_ip
  availability_zone       = "${var.aws_region}${var.aws_region_az1}"
 
  tags = {
    "Owner" = var.owner
    "Name"  = "${var.owner}-subnet1"
  }
}
resource "aws_subnet" "subnet2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.sbn_cidr_block_2
  map_public_ip_on_launch = var.sbn_public_ip
  availability_zone       = "${var.aws_region}${var.aws_region_az1}"
 
  tags = {
    "Owner" = var.owner
    "Name"  = "${var.owner}-subnet2"
  }
}
resource "aws_subnet" "subnet3" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.sbn_cidr_block_3
  availability_zone       = "${var.aws_region}${var.aws_region_az2}"
 
  tags = {
    "Owner" = var.owner
    "Name"  = "${var.owner}-subnet3"
  }
}
resource "aws_subnet" "subnet4" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.sbn_cidr_block_4
  availability_zone       = "${var.aws_region}${var.aws_region_az2}"
 
  tags = {
    "Owner" = var.owner
    "Name"  = "${var.owner}-subnet4"
  }
}