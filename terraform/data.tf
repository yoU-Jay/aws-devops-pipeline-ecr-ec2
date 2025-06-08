# Fetch the default VPC (or filter by tag if needed)
data "aws_vpc" "default" {
  default = true
}

# Fetch subnet(s) in that VPC, filtered for example by availability zone or tags
data "aws_subnet_ids" "default_vpc_subnets" {
  vpc_id = data.aws_vpc.default.id
}

# (Optional) Select first subnet ID to use
locals {
  first_subnet_id = data.aws_subnet_ids.default_vpc_subnets.ids[0]
}
