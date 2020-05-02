
provider "aws" {
  region = "us-east-1"
  version = "~> 2.59"
}


data "aws_ami" "centos" { 
        most_recent = true 
        owners      = ["679593333241"] 
        filter { 
            name   = "state" 
            values = ["available"] 
            } 

        filter { 
            name   = "name" 
            values = ["CentOS Linux 7 x86_64 HVM EBS *"] 
            } 

} 


resource "aws_instance" "centos" {
    ami = "${data.aws_ami.centos.id}"
    instance_type = "t2.micro"
    key_name = "${aws_key_pair.mykey.key_name}"
    provisioner "remote-exec" {
        connection {
            type     = "ssh"
            user     = "centos"
            password = "${file("~/.ssh/id_rsa")}" #your private key
            host     = "${self.public_ip}"
  }



    inline = [
      "sudo yum install httpd -y",
      "sudo systemctl start httpd -y",
    ]
  }
}

output "centos" {   #show the ami that you data.aws_ami.ubuntu found 
    value = "${data.aws_ami.centos.id}" 
} 