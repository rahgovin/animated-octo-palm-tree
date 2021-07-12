# variables.tf
 
# Variables for general information
######################################
 
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}
 
variable "owner" {
  description = "Configuration owner"
  type        = string
}
 
variable "aws_region_az1" {
  description = "AWS region availability zone 1"
  type        = string
  default     = "a"
}
variable "aws_region_az2" {
  description = "AWS region availability zone 2"
  type        = string
  default     = "b"
}
 
 
# Variables for VPC
######################################
 
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.1.0.0/16"
}
 
variable "vpc_dns_support" {
  description = "Enable DNS support in the VPC"
  type        = bool
  default     = true
}
 
variable "vpc_dns_hostnames" {
  description = "Enable DNS hostnames in the VPC"
  type        = bool
  default     = true
}
 
 
# Variables for Security Group
######################################
 
variable "sg_ingress_proto" {
  description = "Protocol used for the ingress rule"
  type        = string
  default     = "tcp"
}
 
variable "sg_ingress_ssh" {
  description = "Port used for the ingress rule"
  type        = string
  default     = "22"
}
 
variable "sg_egress_proto" {
  description = "Protocol used for the egress rule"
  type        = string
  default     = "-1"
}
 
variable "sg_egress_all" {
  description = "Port used for the egress rule"
  type        = string
  default     = "0"
}
 
variable "sg_egress_cidr_block" {
  description = "CIDR block for the egress rule"
  type        = string
  default     = "0.0.0.0/0"
}
 
 
# Variables for Subnet
######################################
 
variable "sbn_public_ip" {
  description = "Assign public IP to the instance launched into the subnet"
  type        = bool
  default     = true
}
 
variable "sbn_cidr_block_1" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.1.0.0/24"
}
variable "sbn_cidr_block_2" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.1.1.0/24"
}
variable "sbn_cidr_block_3" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.1.2.0/24"
}
variable "sbn_cidr_block_4" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.1.3.0/24"
}
 
 
# Variables for Route Table
######################################
 
variable "rt_cidr_block" {
  description = "CIDR block for the route table"
  type        = string
  default     = "0.0.0.0/0"
}
 
 
# Variables for Instance
######################################
 
variable "instance_ami" {
  description = "ID of the AMI used"
  type        = string
  default     = "ami-02e0bb36c61bb9715"
}
 
variable "instance_type" {
  description = "Type of the instance"
  type        = string
  default     = "t2.micro"
}
 
variable "key_pair" {
  description = "SSH Key pair used to connect"
  type        = string
  default     = "poc-key-pair"
}
 
variable "root_device_type" {
  description = "Type of the root block device"
  type        = string
  default     = "gp2"
}
 
variable "root_device_size" {
  description = "Size of the root block device"
  type        = string
  default     = "20"
}

# Variables for ASG
######################################

variable "vpc_id" {
  type = string
  default = "your-vpc-id"
}
variable "image_id" {
  type = string
  default =  "image-id-based-on-the-region"
}

variable "launch_configuration_name" {
  type = string
  default = "launch_configuration_name"
}
 
variable "auto_scalling_group_name" {
  type = string
  default = "auto_scalling_group_name"
}

# Variables for ASG
######################################

variable "autoscalling_group_alb_name" {
  type = string
  default = "autoscallinggroupelb"
}
 
variable "alb_security_group_name" {
  type = string
  default = "alb_name"
}
