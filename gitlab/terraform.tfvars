region = "us-west-2"
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
ami = "ami-0f7919c33c90f5b58"
size_ebs = "100"
domain_name = "www.kenvpt.com"
user_data = "/home/centos/terraform-iaac-ken/task3/httpd"
delegation_set = "Z10047533N9ED5L3STY30"
tags = {
   Environment = "Dev"
   Department = "IT"
   Team = "Infrastructure"
   Created_by = "Kenneth"

}
    
