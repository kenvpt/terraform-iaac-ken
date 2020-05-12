#ROUTE TABLE FOR PUBLIC
resource "aws_route_table" "public_rt" {
    vpc_id = "${aws_vpc.my_vpc.id}"
    tags = "${merge(aws_vpc.my_vpc.tags, map("Name", "public_rt"))}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.my_internet_gateway.id}"
    }

}   

#ROUTE TABLE FOR PRIVATE
resource "aws_route_table" "private_rt" {
    vpc_id = "${aws_vpc.my_vpc.id}"
    tags = "${merge(aws_vpc.my_vpc.tags, map("Name", "private_rt"))}"
    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = "${aws_nat_gateway.my_nat_gateway.id}"
    }
   
}   