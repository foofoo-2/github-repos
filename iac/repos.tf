resource "github_repository" "example" {
  name          = "example"
  description   = "My awesome codebase"

  has_projects  = false
  has_wiki      = false
  has_downloads = false
}
