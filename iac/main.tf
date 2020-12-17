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
  token = "${var.github_token}"
  owner = "${var.github_owner}"
}

