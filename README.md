# Terraform
Terraform documents used in creating my AWS Environment

This environment includes 2-10 EC2 instances(t2.micro) configured with Ubuntu 16 OS and set up as web servers. I implimented a security group as well that only accepts connections from port 8080(default http port). 

This script also creates an HTML file on the webserver instances that outputs a simple "hello world" message. 

A load balancer is created as well to help direct traffic to the EC2 instances in case of a failure or high load periods.
