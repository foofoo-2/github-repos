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
  token = var.GITHUB_TOKEN
}

