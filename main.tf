resource "aws_route53_record" "dynamic_my_ip" {
  zone_id = "${var.my_route53_zone_id}"
  name    = "${var.my_hostname}.{var.my_domain}"
  type    = "A"
  ttl     = "300"
  records = ["${var.my_ip}"]
}