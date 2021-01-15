terraform {
  backend "remote" {}
  required_providers {
    aws = {
      source  = "integrations/github"
      version = "4.2.0"
    }
  }
  required_version = ">= 0.13"
}

provider "github" {
  organization = var.github_organization
  token        = var.github_token
}

