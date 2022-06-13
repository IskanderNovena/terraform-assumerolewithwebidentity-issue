resource "aws_subnet" "staging_private" {
  provider          = aws
  vpc_id            = data.aws_vpc.default_staging.id
  availability_zone = data.aws_availability_zones.staging_available.names[0]
  cidr_block        = cidrsubnet(data.aws_vpc.default_staging.cidr_block, 8, 1)
  tags = {
    Name = "staging-private-${data.aws_availability_zones.staging_available.names[0]}"
  }
}

resource "aws_subnet" "production_private" {
  provider          = aws.production
  vpc_id            = data.aws_vpc.default_production.id
  availability_zone = data.aws_availability_zones.production_available.names[0]
  cidr_block        = cidrsubnet(data.aws_vpc.default_production.cidr_block, 8, 1)
  tags = {
    Name = "production-private-${data.aws_availability_zones.production_available.names[0]}"
  }
}
