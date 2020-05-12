resource "aws_instance" "my_web" {
    instance_type = "${var.instance_type}"
    ami = "${var.ami_centos7}"
    availability_zone = "${data.aws_availability_zones.availability_zone.names[0]}"
    tags = "${merge(aws_vpc.my_vpc.tags, map("Name", "my_centos7"))}"
    key_name = "${aws_key_pair.my_key.key_name}"
    vpc_security_group_ids = ["${aws_security_group.sg_http_https.id}","${aws_security_group.sg_ssh.id}"]
    subnet_id = "${aws_subnet.public_subnet.0.id}"
    user_data = "${file(var.user_data)}"
  
}
resource "aws_instance" "my_sql" {
    instance_type = "${var.instance_type}"
    ami = "${var.ami_centos6}"
    key_name = "${var.key_pair}"
    availability_zone = "${data.aws_availability_zones.availability_zone.names[0]}"
    tags = "${merge(aws_vpc.my_vpc.tags, map("Name", "my_centos6"))}"
    vpc_security_group_ids = ["${aws_security_group.sg_ssh.id}"]
    subnet_id = "${aws_subnet.private_subnet.0.id}"
    user_data = "${file(var.user_data_db)}"
    depends_on = ["aws_instance.my_web"]
}