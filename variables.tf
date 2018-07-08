provider "aws" {
  version = "~> 1.23"
  region = "us-east-1"
}

variable "my_route53_zone_id" {
  type    = "string"
  default = "***************"
}
variable "my_fqdn" {
  type    = "string"
  default = "hostname.domain.com"
}
variable "myip" {} # See https://www.terraform.io/docs/configuration/variables.html#environment-variables
