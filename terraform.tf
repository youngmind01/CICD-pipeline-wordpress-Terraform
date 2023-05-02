terraform {
    cloud {
        organization = "youngmindDevOps"
        workspaces {
            name = "CICD-pipeline-wordpress-Terraform"
        }
    }
}