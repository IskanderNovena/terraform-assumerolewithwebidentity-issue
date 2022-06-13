output "staging_identity" {
  value = data.aws_caller_identity.staging
}

output "staging_private_subnet_cidr" {
  value = aws_subnet.staging_private.cidr_block
}

output "production_identity" {
  value = data.aws_caller_identity.production
}

output "production_private_subnet_cidr" {
  value = aws_subnet.production_private.cidr_block
}
