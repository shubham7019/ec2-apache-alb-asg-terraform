output "alb_dns_name" {
  value       = aws_lb.web_alb.dns_name
  description = "The DNS name of the Application Load Balancer"
}
