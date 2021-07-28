provider "aws" {
  region = "us-east-1"
}

provider "http" {
}

variable "external_url" {
  type 	  = string
  default = "http://ipv4.icanhazip.com"
}

variable "my_route53_zone_id" {
  type    = string
  default = "**************"
}
variable "my_fqdn" {
  type    = string
  default = "**************"
}
