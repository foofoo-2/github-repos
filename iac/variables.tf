variable "github_organization" {
  description = "GitHub organization used to configure the provider"
  type        = string
}

variable "github_token" {
  description = "GitHub access token used to configure the provider"
  type        = string
}

variable "repositories" {
  description = "List of repositories to be created"
  type        = map
}
