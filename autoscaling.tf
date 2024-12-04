resource "aws_launch_template" "web_launch_template" {
  name_prefix   = var.launch_template_name
  image_id      = "ami-0866a3c8686eaeeba"  # Amazon Linux 2 AMI
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  user_data = base64encode(<<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Welcome to the Web Server</h1>" > /var/www/html/index.html
              EOF
  )
}

resource "aws_autoscaling_group" "web_asg" {
  desired_capacity = 2
  max_size         = 3
  min_size         = 1

  launch_template {
    id      = aws_launch_template.web_launch_template.id
    version = "$Latest"
  }

  vpc_zone_identifier = [aws_subnet.public_az1.id, aws_subnet.public_az2.id]
  target_group_arns   = [aws_lb_target_group.app_tg.arn]

  tag {
    key                 = "Name"
    value               = var.autoscaling_group_name
    propagate_at_launch = true
  }
}


