#create-asg.tf

resource "aws_security_group" "instance_security_group" {
  vpc_id      = aws_vpc.vpc.id
  name = "autoscalling_security_group"
  ingress {
    from_port = 0
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}
 
resource"aws_launch_configuration" "launch-configuration" {
  name = var.launch_configuration_name
  image_id = var.instance_ami
  instance_type = var.instance_type
  security_groups = ["${aws_security_group.instance_security_group.id}"]
  user_data =  <<-EOF
              #!/bin/bash
              yum install java unzip -y
              curl https://www-eu.apache.org/dist/ignite/2.7.6/apache-ignite-2.7.6-bin.zip -o apache-ignite.zip
              unzip apache-ignite.zip -d /opt/apache-ignite
              cd /opt/apache-ignite/apache-ignite-2.7.6-bin/
              cp -r libs/optional/ignite-rest-http/ libs/ignite-rest-http/
              ./bin/ignite.sh ./examples/config/example-cache.xml
              EOF
}
 
resource "aws_autoscaling_group" "autoscalling_group_config" {
  name = var.auto_scalling_group_name
  max_size = 6
  min_size = 2
  health_check_grace_period = 300
  health_check_type = "EC2"
  desired_capacity = 3
  force_delete = true
  vpc_zone_identifier = [aws_subnet.subnet4.id]
  load_balancers = ["${aws_alb.autoscalling_group_alb.name}"]
  launch_configuration = aws_launch_configuration.launch-configuration.name
 
  lifecycle {
    create_before_destroy = true
  }
}