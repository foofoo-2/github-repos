resource "github_repository" "repository" {
  for_each               = var.repos

  name                   = each.key
  description            = each.value.description

  has_projects           = false
  has_wiki               = false
  has_downloads          = false

  delete_branch_on_merge = true
  auto_init              = true
}
