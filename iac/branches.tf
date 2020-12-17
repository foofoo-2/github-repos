resource "github_branch_protection" "example" {
  for_each       = var.repos

  repository     = each.key
  branch         = "main"
  enforce_admins = true

  required_pull_request_reviews {
    required_approving_review_count = 1
  }
}
