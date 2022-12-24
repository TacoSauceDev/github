terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.12.0"
    }
  }
  backend "s3" {
    bucket = "terraform-s3-701513128844"
    key    = "terraform/github/terraform.tfstate"
    region = "us-west-2"
  }
}
provider "github" {
  token = var.GITHUB_TOKEN
}