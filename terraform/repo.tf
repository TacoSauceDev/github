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