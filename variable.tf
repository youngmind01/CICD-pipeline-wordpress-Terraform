variable "environment" {
    type = string
    default = "DEV"

    validation {
        condition = contains(["DEV", "QA", "PROD"], upper(var.environment))
        error_message = "The 'environment' tag must be one of 'DEV','QA', or 'PROD'."
    }
    validation {
        condition = upper(var.environment) == var.environment
        error_message = "The 'environment' tag must be in all in uppercase."
    }
}

variable "aws_region" {
    type = string
    description = "AWS Region"
    default = "us-east-2"
}

variable "app_name" {
    type = string
    description = "application name"
    default = "wordpressApp"
}

variable "a-z" {
    type = number
    description = "Number of availability zones to use"
    default = 2
}