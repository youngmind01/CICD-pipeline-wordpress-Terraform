terraform {
    cloud {
        organization = "youngmindDevOps"
        workspaces {
            name = "CICD-pipeline-wordpress-Terraform"
        }
    }
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "4.65.0"
        }
    }
}

provider "aws" {
    region = var.aws_region
    default_tags {
        tags = {
            App              = var.app_name
            Environment      = var.environment
            terraform        = "True"
        }
    }
}