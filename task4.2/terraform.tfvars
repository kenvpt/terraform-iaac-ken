
region = "us-east-2"
vpc_cidr = "10.0.0.0/16"
public_subnet_cidr = [
    "10.0.1.0/24",
    "10.0.2.0/24",
    "10.0.3.0/24"
]
private_subnet_cidr = [
    "10.0.11.0/24",
    "10.0.12.0/24",
    "10.0.13.0/24"
]

instance_type = "t2.micro"
key_name = "my_key"
public_key_path = "~/.ssh/id_rsa.pub"
ami_centos7 = "ami-0affd4508a5d2481b"
size_ebs = "100"
domain_name = "www.kenvpt.com"
user_data = "/home/centos/terraform-iaac-ken/task4/httpd"
user_data_backup = "/home/centos/terraform-iaac-ken/task4.2/backup_server"
delegation_set = "Z10047533N9ED5L3STY30"
tags = {
   Environment = "Dev"
   Department = "IT"
   Team = "Infrastructure"
   Created_by = "Kenneth"

}
private_key = "~/.ssh/id_rsa"