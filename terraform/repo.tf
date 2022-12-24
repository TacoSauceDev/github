resource "github_repository" "github" {
  name        = "github"
  description = "For managing github with terraform."
  visibility = "public"
  vulnerability_alerts = true
  security_and_analysis {
    advanced_security {
      status = "enabled"
    }
    secret_scanning {
      status = "enabled"
    }
    secret_scanning_push_protection {
      status = "enabled"
    }
  }
}
resource "github_branch" "github_main" {
  repository = github_repository.github.name
  branch     = "main"
}
resource "github_branch" "github_dev" {
  repository = github_repository.github.name
  branch     = "dev"
}
resource "github_branch_default" "github_default" {
  depends_on = [
    github_branch.github_dev
  ]
  repository = github_repository.github.name
  branch     = github_branch.github_dev.branch
}
resource "github_repository" "terraform-account-wide" {
  name        = "terraform-account-wide"
  description = "For managing github with terraform."
  visibility = "public"
  vulnerability_alerts = true
  security_and_analysis {
    advanced_security {
      status = "enabled"
    }
    secret_scanning {
      status = "enabled"
    }
    secret_scanning_push_protection {
      status = "enabled"
    }
  }
}
resource "github_branch" "terraform-account-wide-main" {
  repository = github_repository.terraform-account-wide.name
  branch     = "main"
}
resource "github_branch" "terraform-account-wide-dev" {
  repository = github_repository.terraform-account-wide.name
  branch     = "dev"
}
resource "github_branch_default" "terraform-account-wide_default" {
  depends_on = [
    github_branch.terraform-account-wide-dev
  ]
  repository = github_repository.terraform-account-wide.name
  branch     = github_branch.terraform-account-wide-dev.branch
}