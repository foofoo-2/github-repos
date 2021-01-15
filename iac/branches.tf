resource "github_branch_protection" "branch_protection" {
  for_each       = var.repositories

  repository_id  = github_repository.repository[each.key].node_id
  pattern        = "main"

  enforce_admins = true

  required_pull_request_reviews {
    required_approving_review_count = 1
  }

  #depends_on = [github_repository.repository]
}
