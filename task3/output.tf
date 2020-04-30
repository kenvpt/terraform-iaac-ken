output "vpc" {
    value = "${aws_vpc.my_vpc.id}"
}
output "public_subnets" {
    value = [
        "${aws_subnet.public_subnet.0.id}      ${aws_subnet.public_subnet.0.availability_zone}",
        "${aws_subnet.public_subnet.1.id}      ${aws_subnet.public_subnet.1.availability_zone}",
        "${aws_subnet.public_subnet.2.id}      ${aws_subnet.public_subnet.2.availability_zone}"
    ]

}
output "private_subnets" {
    value = [
        "${aws_subnet.private_subnet.0.id}      ${aws_subnet.private_subnet.0.availability_zone}",
        "${aws_subnet.private_subnet.1.id}      ${aws_subnet.private_subnet.1.availability_zone}",
        "${aws_subnet.private_subnet.2.id}      ${aws_subnet.private_subnet.2.availability_zone}"
    ]

}
