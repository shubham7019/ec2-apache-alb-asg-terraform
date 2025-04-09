# ec2-apache-alb-asg-terraform
# 🚀 Terraform Project: EC2 Apache Web Server with Auto Scaling and ALB (AWS)

This project automates the deployment of an Apache web server on AWS using Terraform. It includes an Auto Scaling Group (ASG) of EC2 instances behind an Application Load Balancer (ALB). Each instance is configured with a user-data script that installs and starts Apache, and the homepage shows which EC2 instance served the request.

---

## 🌐 Features

- ✅ EC2 Launch Template with Apache installation via user-data
- ✅ Auto Scaling Group (min/max/desired instance count configurable)
- ✅ Application Load Balancer (ALB) with listener on port 80
- ✅ Target Group with health checks
- ✅ Security Groups for HTTP and SSH access
- ✅ Outputs the ALB DNS so you can access your website instantly

---

## 🧱 Architecture Diagram

User --> [ALB] --> [EC2 Instance 1] [EC2 Instance 2] [EC2 Instance N] (Instances managed by Auto Scaling Group)
. ├── main.tf ├── variables.tf ├── outputs.tf ├── data.tf ├── security.tf ├── provider.tf ├── user-data.sh ├── README.md


---

## 🚀 How to Deploy

1. Clone the repo:
   ```bash
   git clone https://github.com/shubham7019/ec2-apache-alb-asg-terraform.git
   cd ec2-apache-alb-asg-terraform

1. terraform init
2. terraform plan
3. terraform apply
4. When complete, Terraform will output the ALB DNS
-->alb_dns_name = http://apache-alb-xxxxxx.ap-south-1.elb.amazonaws.com
5. Visit the URL in your browser to view the Apache site


🧪 How to Test Load Balancing
Each EC2 instance homepage shows the hostname it's running on. Refresh the page multiple times — if more than one EC2 is active, the hostname should change, confirming that the ALB is routing traffic properly.

📌 Technologies Used
AWS (EC2, ALB, Auto Scaling, VPC)

Terraform

Apache HTTP Server

Bash (user-data script)

✅ Future Enhancements
Add HTTPS via AWS ACM + Route 53

Add custom domain name

Store Terraform state in S3

Add CloudWatch metrics and alarms

🧑‍💻 Author
Shubham patil
Cloud & DevOps enthusiast
GitHub Profile
