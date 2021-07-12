#create-rt.tf
 
resource "aws_route_table" "rt1" {
  vpc_id = aws_vpc.vpc.id
 
  route {
    cidr_block = var.rt_cidr_block
    gateway_id = aws_internet_gateway.igw.id
  }
 
  tags = {
    "Owner" = var.owner
    "Name"  = "${var.owner}-rt"
  }
 
}
resource "aws_route_table_association" "rt_sbn_asso1" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.rt1.id
}

resource "aws_route_table" "rt2" {
  vpc_id = aws_vpc.vpc.id
 
  route {
    cidr_block = var.rt_cidr_block
    gateway_id = aws_internet_gateway.igw.id
  }
 
  tags = {
    "Owner" = var.owner
    "Name"  = "${var.owner}-rt"
  }
 
}
resource "aws_route_table_association" "rt_sbn_asso2" {
  subnet_id      = aws_subnet.subnet2.id
  route_table_id = aws_route_table.rt2.id
}