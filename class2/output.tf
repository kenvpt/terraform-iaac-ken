
output "name" {
    value = "kenneth"
}

output "lastname" {
    value = "valenzuela"
}

resource "aws_key_pair" "us-east-1-key" {
  key_name   = "ken_bastion2"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

output "key_name" {
    value = "${aws_key_pair.us-east-1-key.key_name}"
}

output "actual_key" {
    value = "${aws_key_pair.us-east-1-key.public_key}"
}