#create-alb.tf

resource "aws_security_group" "alb_security_group" {
  vpc_id      = aws_vpc.vpc.id
  name = var.alb_security_group_name
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_alb" "autoscalling_group_alb" {
  name = var.autoscalling_group_alb_name
  security_groups = ["${aws_security_group.alb_security_group.id}"]
  load_balancer_type = "application"
  subnets            = [aws_subnet.subnet1.id,aws_subnet.subnet3.id]
}