output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnets" {
  description = "IDs of public subnets"
  value       = module.vpc.public_subnets
}

output "private_subnets" {
  description = "IDs of private subnets"
  value       = module.vpc.private_subnets
}

output "ec2_instance_id" {
  value = module.ec2.instance_id
  description = "ID of the EC2 web server"
}

output "ec2_public_ip" {
  value = module.ec2.public_ip
  description = "Public IP of the EC2 web server"
}