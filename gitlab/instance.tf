resource "aws_instance" "my_instance" {
    instance_type = "${var.instance_type}"
    ami = "${data.aws_ami.centos.id}"
    availability_zone = "${data.aws_availability_zones.availability_zone.names[0]}"

    tags = {
        Name = "my_instance"
    }
    key_name = "${aws_key_pair.my_key.key_name}"
    vpc_security_group_ids = ["${aws_security_group.sg_http_https.id}","${aws_security_group.sg_ssh.id}"]
    subnet_id = "${aws_subnet.public_subnet.0.id}"
    user_data = "${file(var.user_data)}"


}