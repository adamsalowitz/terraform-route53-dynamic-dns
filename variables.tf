provider "aws" {
  version = "~> 1.23"
  region = "us-east-1"
}

variable "my_route53_zone_id" {
  type    = "string"
  default = "Z20NBA4QJSYPCC"
}
variable "my_fqdn" {
  type    = "string"
  default = "dynamic.detwah.com"
}
variable "my_ip" {
  type    = "string"
  default = "35.128.12.117"
}
