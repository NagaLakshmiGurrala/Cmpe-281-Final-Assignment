output "load_balancer_dns" {
  value = aws_lb.app_lb.dns_name
}

output "autoscaling_group_name" {
  value = aws_autoscaling_group.web_asg.name
}