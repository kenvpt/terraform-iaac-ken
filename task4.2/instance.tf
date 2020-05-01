resource "aws_instance" "my_web" {
    instance_type = "${var.instance_type}"
    ami = "${var.ami_centos7}"
    availability_zone = "${data.aws_availability_zones.availability_zone.names[0]}"
    tags = "${merge(aws_vpc.my_vpc.tags, map("Name", "my_centos7"))}"
    key_name = "${aws_key_pair.my_key.key_name}"
    vpc_security_group_ids = ["${aws_security_group.sg_http_https.id}","${aws_security_group.sg_ssh.id}"]
    subnet_id = "${aws_subnet.public_subnet.0.id}"
    provisioner "remote-exec" {
    connection {
      type        = "ssh"
      host        = "${aws_instance.my_web.public_ip}"
      private_key = "${file(var.private_key)}"
      user        = "centos"
    }
    inline = [
        "sudo yum install httpd mariadb-server -y",
        "sudo systemctl start httpd",
        "sudo systemctl enable httpd",
        "sudo systemctl start mariadb",
        #"sudo echo 'TERRAFORM IS FUN!' > /var/www/html/index.html"
        "sudo setenforce 0",
        "sudo systemctl restart httpd",
        "sudo yes yes | ssh-keygen -b 2048 -t rsa -f ~/.ssh/id_rsa -q -N ''",
        "ssh-copy-id -i ~/.ssh/id_rsa.pub centos@${aws_instance.my_sql.private_ip}"
    ]
  }
}
resource "aws_instance" "my_sql" {
    instance_type = "${var.instance_type}"
    ami = "${var.ami_centos7}"
    availability_zone = "${data.aws_availability_zones.availability_zone.names[0]}"
    tags = "${merge(aws_vpc.my_vpc.tags, map("Name", "my_centos6"))}"
    key_name = "${aws_key_pair.my_key.key_name}"
    vpc_security_group_ids = ["${aws_security_group.sg_ssh.id}"]
    subnet_id = "${aws_subnet.private_subnet.0.id}"
    user_data = "${file(var.user_data_backup)}"
}