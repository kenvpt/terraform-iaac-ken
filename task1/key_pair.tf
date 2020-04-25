resource "aws_key_pair" "my_key" { #this will have the key pairs for the instances
    key_name = "${var.key_name}"
    public_key = "${file(var.public_key_path)}"
}