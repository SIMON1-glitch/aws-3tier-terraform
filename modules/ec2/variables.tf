variable "vpc_id" {}
variable "subnet_id" {}
variable "ami" {}
variable "instance_type" {
  default = "t2.micro"
}
variable "key_name" {}