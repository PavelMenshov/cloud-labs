provider "github" {
  token = var.github_token
}

resource "github_repository" "production-repo" {
  name        = "prod-repo"
  description = "Repo for the production app"
  private     = true
}
