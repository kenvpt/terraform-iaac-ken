#EIP
resource "aws_eip" "eip" {
  vpc      = true
  tags = "${merge(aws_vpc.my_vpc.tags, map("Name", "eip"))}"
}