module "gitlab1" {
    source = "/home/centos/terraform-iaac-ken/module_gitlab/gitlab_project"
    region = "us-west-1"
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

    instance_type = "t2.xlarge"
    key_name = "my_key"
    public_key_path = "~/.ssh/id_rsa.pub"
    domain_name = "www.gitlab-prod.kenvpt.com"
    delegation_set = "Z10047533N9ED5L3STY30"
    tags = {
     Environment = "Gitlab"
     Department = "Prod"
     Team = "Infrastructure"
     Created_by = "Team5"

    }
    private_key_path = "~/.ssh/id_rsa"  
}
module "gitlab2" {
    source = "/home/centos/terraform-iaac-ken/module_gitlab/gitlab_project"
    region = "us-east-2"
    vpc_cidr = "11.0.0.0/16"
    public_subnet_cidr = [
        "11.0.1.0/24",
        "11.0.2.0/24",
        "11.0.3.0/24"
]
    private_subnet_cidr = [
        "11.0.11.0/24",
        "11.0.12.0/24",
        "11.0.13.0/24"
    ]

    instance_type = "t2.xlarge"
    key_name = "my_key"
    public_key_path = "~/.ssh/id_rsa.pub"
    domain_name = "www.gitlab-dev.kenvpt.com"
    delegation_set = "Z10047533N9ED5L3STY30"
    tags = {
     Environment = "Gitlab"
     Department = "Dev"
     Team = "Infrastructure"
     Created_by = "Team5"

    }
    private_key_path = "~/.ssh/id_rsa"  
}