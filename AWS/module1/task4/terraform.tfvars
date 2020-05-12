
region = "us-east-2"
vpc_cidr = "192.168.0.0/16"
public_subnet_cidr = [
    "192.168.1.0/24",
    "192.168.2.0/24",
    "192.168.3.0/24"
]
private_subnet_cidr = [
    "192.168.11.0/24",
    "192.168.12.0/24",
    "192.168.13.0/24"
]

instance_type = "t2.micro"
key_name = "my_key"
public_key_path = "~/.ssh/id_rsa.pub"
ami_centos7 = "ami-01e36b7901e884a10"
ami_centos6 = "ami-0db8e77c005d79e33"
size_ebs = "100"
domain_name = "www.kenvpt.com"
user_data = "/home/centos/terraform-iaac-ken/task4/httpd"
user_data_db = "/home/centos/terraform-iaac-ken/task4/mysql"
delegation_set = "Z10047533N9ED5L3STY30"
tags = {
   Environment = "Dev"
   Department = "IT"
   Team = "Infrastructure"
   Created_by = "Kenneth"

}
private_key = "~/.ssh/id_rsa"