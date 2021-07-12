# Terraform-AWS

## Terraform project to create the following components:

•	1 VPC – 10.1.0.0/16

•	4 subnets (spread across two availability zones for high availability)

      o	Sub1 – 10.1.0.0/24 (should be accessible from internet)
      
      o	Sub2 – 10.1.1.0/24 (should be accessible from internet)
      
      o	Sub3 – 10.1.2.0/24 (should NOT be accessible from internet)
      
      o	Sub4 – 10.1.3.0/24 (should NOT be accessible from internet)
   
•	1 compute instance running RedHat in subnet sub2

      o	20 GB storage
      
      o	t2.micro
   
•	1 ASG running RedHat in subnet sub4 

      o	20 GB storage
      
      o	Script the installation of apache on these instances
      
      o	2 minimum, 6 maximum hosts
      
      o	t2.micro
      
•	1 alb that listens on port 80 and forwards traffic to the instance in sub4

•	Subnets should have security groups in place

•	1 S3 bucket with lifecycle policies

      o	Images folder move to glacier after 90 days
      
      o	Logs folder cleared after 90 days
   
