#VPC

resource "aws_vpc" "my_vpc" {
    cidr_block = "${var.vpc_cidr}"
    enable_dns_hostnames = true
    enable_dns_support = true

    tags = {
        Name = "my_vpc"
    }
}

#INTERNET GATEWAY

resource "aws_internet_gateway" "my_internet_gateway" {
    vpc_id = "${aws_vpc.my_vpc.id}"

    tags = {
        Name = "igw"
    }
}

#ROUTE TABLE

resource "aws_route_table" "public_rt" {
    vpc_id = "${aws_vpc.my_vpc.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.my_internet_gateway.id}"
    }
    tags = {
        Name = "public_rt"
    }
}   

#SUBNETS

resource "aws_subnet" "public_subnet" {
    vpc_id = "${aws_vpc.my_vpc.id}"
    cidr_block = "${var.subnet_cidr}"
    map_public_ip_on_launch = true
    availability_zone = "${data.aws_availability_zones.available.names[0]}"

    tags = {
        Name = "public_subnet"
    }
}

# SUBNET ASSOCIATION
resource "aws_route_table_association" "public_assoc" {
    subnet_id = "${aws_subnet.public_subnet.id}"
    route_table_id = "${aws_route_table.public_rt.id}"
}