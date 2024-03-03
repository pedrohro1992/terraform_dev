
data "aws_vpc" "this" {
  default = true
}


# data "aws_subnet" "default" {
#   vpc_id = data.aws_vpc.this.id
#   default_for_az = true
# }
