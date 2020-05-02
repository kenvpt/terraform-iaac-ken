resource "aws_route53_record" "kenvpt" {
  zone_id = "${var.delegation_set}"
  name    = "${var.domain_name}"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.my_instance.public_ip}"]
}
