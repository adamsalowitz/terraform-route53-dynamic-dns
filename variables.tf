provider "aws" {
  version = "~> 1.27"
  region = "us-east-1"
}

provider "http" {
  version = "~> 1.0"
}

variable "external_url" {
  type 	  = "string"
  default = "http://ipv4.icanhazip.com"
}

variable "my_route53_zone_id" {
  type    = "string"
  default = "**************"
}
variable "my_fqdn" {
  type    = "string"
  default = "hostname.domain.com"
}
