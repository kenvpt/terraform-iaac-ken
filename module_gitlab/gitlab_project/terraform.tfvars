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

instance_type = "t2.xlarge"
key_name = "my_key"
public_key_path = "~/.ssh/id_rsa.pub"
domain_name = "www.gitlab.kenvpt.com"
delegation_set = "Z10047533N9ED5L3STY30"
tags = {
   Environment = "Gitlab"
   Department = "IT"
   Team = "Infrastructure"
   Created_by = "Team5"

}
private_key_path = "~/.ssh/id_rsa"   
