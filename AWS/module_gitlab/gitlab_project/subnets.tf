#SUBNETS PUBLIC

resource "aws_subnet" "public_subnet" {
    vpc_id = "${aws_vpc.my_vpc.id}"
    count = "${length(data.aws_availability_zones.availability_zone.names)}"
    cidr_block = "${element(var.public_subnet_cidr,count.index)}"
    map_public_ip_on_launch = true
    availability_zone = "${element(data.aws_availability_zones.availability_zone.names,count.index)}"
    tags = "${merge(aws_vpc.my_vpc.tags, map("Name", "public_subnet${count.index + 1}"))}"
    
}

#SUBNET PRIVATE
resource "aws_subnet" "private_subnet" {
    vpc_id = "${aws_vpc.my_vpc.id}"
    count = "${length(data.aws_availability_zones.availability_zone.names)}"
    cidr_block = "${element(var.private_subnet_cidr,count.index)}"
    map_public_ip_on_launch = false
    availability_zone = "${element(data.aws_availability_zones.availability_zone.names,count.index)}"
    tags = "${merge(aws_vpc.my_vpc.tags, map("Name", "private_subnet${count.index + 1}"))}"
}