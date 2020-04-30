output "instance_id"{
    value = "${aws_instance.my_instance.id}"
}

output "key_name"{
    value = "${aws_instance.my_instance.key_name}"
}

output "public_ip"{
    value = "${aws_instance.my_instance.public_ip}"
}

output "instance_arn"{
    value = "${aws_instance.my_instance.arn}"
}

output "DNS_name"{
    value = "${aws_route53_record.kenvpt.name}"
}

output "MY_MESSAGE"{
    value = "login to wordpress and reset password"
}