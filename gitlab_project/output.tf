output "vpc" {
    value = "${aws_vpc.my_vpc.id}"
}
output "public_subnets" {
    value = [
        "${aws_subnet.public_subnet.0.id}      ${aws_subnet.public_subnet.0.availability_zone}",
        "${aws_subnet.public_subnet.1.id}      ${aws_subnet.public_subnet.1.availability_zone}"
    ]

}
output "private_subnets" {
    value = [
        "${aws_subnet.private_subnet.0.id}      ${aws_subnet.private_subnet.0.availability_zone}",
        "${aws_subnet.private_subnet.1.id}      ${aws_subnet.private_subnet.1.availability_zone}"
    
    ]

}
output "route_53" {
    value = "${aws_route53_record.kenvpt.name}"
}
output "internet_gateway" {
    value = "${aws_internet_gateway.my_internet_gateway.id}"
}
output "NAT_gateway" {
    value = "${aws_nat_gateway.my_nat_gateway.id}"
}
