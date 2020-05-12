resource "aws_ebs_volume" "my_ebs" {
  availability_zone = "${data.aws_availability_zones.available.names[0]}"
  size              = "${var.size_ebs}"

  tags = {
    Name = "my_ebs"
  }
}
resource "aws_volume_attachment" "ebs_attach" {
  device_name = "/dev/sdh"
  volume_id   = "${aws_ebs_volume.my_ebs.id}"
  instance_id = "${aws_instance.my_instance.id}"
}