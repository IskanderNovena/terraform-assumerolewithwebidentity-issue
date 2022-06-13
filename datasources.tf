data "aws_caller_identity" "staging" {
  provider = aws
}

data "aws_availability_zones" "staging_available" {
  provider = aws
  state    = "available"
}

data "aws_vpc" "default_staging" {
  provider = aws
  default  = true
}

data "aws_caller_identity" "production" {
  provider = aws.production
}

data "aws_availability_zones" "production_available" {
  provider = aws.production
  state    = "available"
}

data "aws_vpc" "default_production" {
  provider = aws.production
  default  = true
}
