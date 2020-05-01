variable "region"{}
variable "vpc_cidr"{}
variable "public_subnet_cidr"{
    type = "list"
}
variable "private_subnet_cidr"{
    type = "list"
}
variable "instance_type"{}
variable "key_name"{}
variable "public_key_path"{}
variable "ami_centos7"{}
variable "ami_centos6"{}

variable "size_ebs"{} 
variable "domain_name"{}
variable "user_data"{}
variable "user_data_backup"{}
variable "delegation_set"{}


variable "tags"{
    type = "map"
}
variable "private_key"{}