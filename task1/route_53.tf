resource "aws_route53_zone" "main" {
  name = "kenvpt.com"
}
resource "aws_route53_record" "kenvpt" {
  zone_id = "${aws_route53_zone.main.zone_id}"
  name    = "${var.domain_name}"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.my_instance.public_ip}"]
}