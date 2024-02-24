output "vpc_id" {
  description = "The ID of the VPC"
  value       = try(aws_vpc.this.id, null)
}

output "vpc_arn" {
  description = "The ARN of the VPC"
  value       = try(aws_vpc.this.arn, null)
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = try(aws_vpc.this.cidr_block, null)
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = try(aws_subnet.public.*.id, null)
}

output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  value       = try(aws_subnet.private.*.id, null)
}