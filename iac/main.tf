terraform {
  backend "remote" {}
  required_providers {
    aws = {
      source  = "hashicorp/github"
      version = "4.1.0"
    }
  }
  required_version = ">= 0.13"
}

provider "github" {
  organization = "foofoo-2"
  token        = var.GITHUB_TOKEN
}

