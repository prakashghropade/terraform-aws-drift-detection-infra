terraform {
    backend "s3" {}
    required_version = ">=1.0"
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "6.49.0"
        }

         random = {
            source  = "hashicorp/random"
            version = "~> 3.0"
        }
    }
}
    
provider "aws" {
    region = var.region

    default_tags {
      tags = {
        Environment = var.environment
        project = "AWS-Production-Infrastructure"
        ManagedBy = "Terraform"
        
              }
    }
}