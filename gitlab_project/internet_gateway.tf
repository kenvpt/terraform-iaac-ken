#INTERNET GATEWAY
resource "aws_internet_gateway" "my_internet_gateway" {
    vpc_id = "${aws_vpc.my_vpc.id}"
    tags = "${merge(aws_vpc.my_vpc.tags, map("Name", "igw"))}"
}