variable "region" {
    description = "The AWS region to  deploy the infrastructure"
    type = string
    default = "ap-south-1"
}

variable "environment" {
    description = "Environment name (e.g., dev, stagging, production)"
    type = string
    default = "production"
}

variable "vpc_cidr" {
    description = "The CIDR block for the VPC"
    type = string
    default = "10.0.0.0/16"
} 

variable "public_subnet_cidrs" {
    description = "List of the CIDR blocks for public subnets"
    type = list(string)
    default = [ "10.0.1.0/24", "10.0.2.0/24" ]
}

variable "private_subnet_cidrs" {
    description = "List of the CIDR blocks for the private subnets"
    type = list(string)
    default = [ "10.0.11.0/24", "10.0.12.0/24" ]
}

variable "public_subnet_count" {
  description = "Number of public subnets to create"
  type        = number
  default     = 2
}

variable "private_subnet_count" {
  description = "Number of private subnets to create"
  type        = number
  default     = 2
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b"]
}



variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
  default     = "ami-07a00cf47dbbc844c" # Ubuntu 22.04 LTS
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = "t2.small"
}

variable "desired_capacity" {
  description = "The desired number of EC2 instances in the Auto Scaling Group"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "The maximum number of EC2 instances in the Auto Scaling Group"
  type        = number
  default     = 5
}

variable "min_size" {
  description = "The minimum number of EC2 instances in the Auto Scaling Group"
  type        = number
  default     = 1
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket (prefix)"
  type        = string
  default     = "terraform-day15-prod-bucket"
}
