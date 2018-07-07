# terraform-route53-dynamic-dns

This plan is intended to take your Internet IP and submit a Route 53 request to create or update an IPv4 A Record for your domain.

## Requirements

- IPv4 Address (IPv6 not yet supported)
- Domain you own must be hosted on Amazon Route 53 DNS
- Amazon IAM User created with active Access Key and AmazonRoute53FullAccess permissions.  The Access Key ID and Secret should be in your ```.aws/credentials``` file.
```
cat ~/.aws/credentials
[default]
aws_access_key_id= "********************"
aws_secret_access_key = "****************************************"
```
- The following dig command must return your accurate Internet IP.  This command relies on special record for your IP on opendns.com

```dig +short myip.opendns.com @resolver1.opendns.com```

## Author

- [Adam Salowitz](https://github.com/wutangfinancial)

## No Support

This plan comes with **NO SUPPORT**

## License

This work is licensed under a [Creative Commons Attribution 4.0 International License.](http://creativecommons.org/licenses/by/4.0/)



