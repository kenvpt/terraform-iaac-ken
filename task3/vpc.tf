#VPC
resource "aws_vpc" "my_vpc" {
    cidr_block = "${var.vpc_cidr}"
    enable_dns_hostnames = true
    enable_dns_support = true

    tags = {
       "${var.ktag[0]}" = "${var.vtag[0]}"
       "${var.ktag[1]}" = "${var.vtag[1]}"
       "${var.ktag[2]}" = "${var.vtag[2]}"
       "${var.ktag[3]}" = "${var.vtag[3]}"
       
    }
}
