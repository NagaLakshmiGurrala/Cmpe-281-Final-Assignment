variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "The name of the VPC"
  default     = "MainVPC"
}

variable "public_subnet_cidr_az1" {
  description = "CIDR block for public subnet in AZ1"
  default     = "10.0.1.0/24"
}

variable "public_subnet_cidr_az2" {
  description = "CIDR block for public subnet in AZ2"
  default     = "10.0.2.0/24"
}

variable "private_subnet_cidr_az1" {
  description = "CIDR block for private subnet in AZ1"
  default     = "10.0.3.0/24"
}

variable "private_subnet_cidr_az2" {
  description = "CIDR block for private subnet in AZ2"
  default     = "10.0.4.0/24"
}

variable "internet_gateway_name" {
  description = "Name of the Internet Gateway"
  default     = "MyInternetGateway"
}

variable "route_table_name" {
  description = "Name of the public route table"
  default     = "PublicRouteTable"
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  default     = "WebServerInstance"
}

variable "autoscaling_group_name" {
  description = "Name of the Auto Scaling group"
  default     = "WebServerASG"
}

variable "launch_template_name" {
  description = "Name of the EC2 Launch Template"
  default     = "WebServerLaunchTemplate"
}