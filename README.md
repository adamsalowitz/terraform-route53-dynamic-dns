# terraform-route53-dynamic-dns

## Version

0.3.0

This script and terraform plan is intended to take your Internet IP and submit a Route 53 request to create or update an IPv4 A Record for your domain.

## Requirements

- A computer running terraform on your local network
- IPv4 Address (IPv6 not yet supported)
- Ability to browse to http://ipv4.icanhazip.com, which will return your IPv4 IP
- Domain you own must be hosted on Amazon Route 53 DNS
- Amazon IAM User created with active Access Key and AmazonRoute53FullAccess permissions.  The Access Key ID and Secret should be in your ```.aws/credentials``` file.
```
cat ~/.aws/credentials
[default]
aws_access_key_id= "********************"
aws_secret_access_key = "****************************************"
```

## Limitations

- Not tested on Windows at this time.
- IPv6 not yet supported

## Usage

**Create** proper ```.aws/credentials```

**Clone the Repo**

```
git clone git@github.com:adamsalowitz/terraform-route53-dynamic-dns.git
cd terraform-route53-dynamic-dns
```

**Update** ```variables.tf``` with your values for ```region``` ```my_route53_zone_id``` and ```my_fqdn``` (FQDN of the A record you'd like to create)


**Run the terraform**

```
terraform init
terraform plan
terraform apply
```

## Author

- [Adam Salowitz](https://github.com/adamsalowitz)

## No Support

This script and terraform plan comes with **NO SUPPORT.**

## License

This work is licensed under a [Creative Commons Attribution 4.0 International License.](http://creativecommons.org/licenses/by/4.0/)

The inspiration for using "http://ipv4.icanhazip.com" with the http data provider came from https://github.com/terraform-providers/terraform-provider-aws/blob/master/examples/eks-getting-started/workstation-external-ip.tf, which is licenced under [Mozilla Public License Version 2.0](https://github.com/terraform-providers/terraform-provider-aws/blob/master/LICENSE). 

