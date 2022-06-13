provider "aws" {
  region = var.aws_region

  assume_role_with_web_identity {
    role_arn                = "arn:aws:iam::${var.aws_account_id_staging}:role/${var.github_role_name}"
    session_name            = "github_action_session"
    web_identity_token_file = var.web_identity_token_file
  }
}

provider "aws" {
  region = var.aws_region
  alias  = "production"

  assume_role_with_web_identity {
    role_arn                = "arn:aws:iam::${var.aws_account_id_production}:role/${var.github_role_name}"
    session_name            = "github_action_session"
    web_identity_token_file = var.web_identity_token_file
  }
}
