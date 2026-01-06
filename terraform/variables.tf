variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-west-2"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "project_name" {
  description = "Name used for tagging AWS resources"
  type        = string
  default     = "terraform-aws-networking"
}

