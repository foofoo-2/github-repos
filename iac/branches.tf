resource "github_branch_protection" "example" {
  for_each       = var.repos

  repository_id  = each.key
  pattern        = "main"

  enforce_admins = true

  required_pull_request_reviews {
    required_approving_review_count = 1
  }

  depends_on = [github_repository.example]
}
