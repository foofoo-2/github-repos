resource "github_repository" "example" {
  for_each      = var.repos

  name          = each.key
  description   = each.value.description

  has_projects  = false
  has_wiki      = false
  has_downloads = false
}
