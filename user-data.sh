#!/bin/bash
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>hi shubham Served from: $(hostname)</h1>" > /var/www/html/index.html
