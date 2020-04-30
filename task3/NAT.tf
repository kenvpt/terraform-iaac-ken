#NAT GATEWAY
resource "aws_nat_gateway" "my_nat_gateway" {
  allocation_id = "${aws_eip.eip.id}"
  subnet_id     = "${aws_subnet.public_subnet.0.id}"
  tags = "${merge(aws_vpc.my_vpc.tags, map("Name", "NAT"))}"
}