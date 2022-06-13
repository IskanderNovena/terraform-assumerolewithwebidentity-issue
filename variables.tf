variable "aws_account_id_production" {
  type        = string
  description = "Account ID of the production account"
}

variable "aws_account_id_staging" {
  type        = string
  description = "Account ID of the staging account"
}

variable "aws_region" {
  type        = string
  description = "AWS region to use"
}

variable "github_role_name" {
  type        = string
  description = "Name of the GitHub role to use"
}

variable "web_identity_token_file" {
  type    = string
  default = "/tmp/web_identity_token_file"
}
