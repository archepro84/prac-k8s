locals {
  len_public_subnets  = length(var.public_subnets)
  len_private_subnets = length(var.private_subnets)
}


resource "aws_subnet" "public" {
  count = local.len_public_subnets

  vpc_id            = aws_vpc.this.id
  availability_zone = length(regexall("^[a-z]{2}-", element(var.azs, count.index))) > 0 ? element(var.azs, count.index) : null
  cidr_block        = element(concat(var.public_subnets, [""]), count.index)

  tags = {
    Name = "${var.name}-${var.public_subnet_suffix}-${count.index + 1}"
  }
}

resource "aws_subnet" "private" {
  count = local.len_private_subnets

  vpc_id            = aws_vpc.this.id
  availability_zone = length(regexall("^[a-z]{2}-", element(var.azs, count.index))) > 0 ? element(var.azs, count.index) : null
  cidr_block        = element(concat(var.private_subnets, [""]), count.index)

  tags = {
    Name = "${var.name}-${var.private_subnet_suffix}-${count.index + 1}"
  }
}