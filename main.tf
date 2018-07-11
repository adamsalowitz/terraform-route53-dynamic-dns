data "http" "my-external-ip" {
  url = "${var.external_url}"
}

resource "aws_route53_record" "dynamic_my_ip" {
  zone_id = "${var.my_route53_zone_id}"
  name    = "${var.my_fqdn}"
  type    = "A"
  ttl     = "300"
  records = ["${chomp(data.http.my-external-ip.body)}"]
}
