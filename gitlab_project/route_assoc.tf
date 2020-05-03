#SUBNET ASSOCIATION PUBLIC
resource "aws_route_table_association" "public_assoc" {
    count = "${length(data.aws_availability_zones.availability_zone.names)}"
    subnet_id = "${element(aws_subnet.public_subnet.*.id, count.index)}"
    route_table_id = "${aws_route_table.public_rt.id}"
}

#SUBNET ASSOCIATION PRIVATE
resource "aws_route_table_association" "private_assoc" {
    count = "${length(data.aws_availability_zones.availability_zone.names)}"
    subnet_id = "${element(aws_subnet.private_subnet.*.id, count.index)}"
    route_table_id = "${aws_route_table.private_rt.id}"
}