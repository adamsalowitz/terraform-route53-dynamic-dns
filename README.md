# terraform-route53-dynamic-dns

This script and terraform plan is intended to take your Internet IP and submit a Route 53 request to create or update an IPv4 A Record for your domain.

## Requirements

- A Unix computer running terraform on your local network
- ```dig``` command for DNS lookup.  Also, ```dig +short myip.opendns.com @resolver1.opendns.com``` must return your accurate Internet IP.  This command relies on special record for your IP on opendns.com
- IPv4 Address (IPv6 not yet supported)
- Domain you own must be hosted on Amazon Route 53 DNS
- Amazon IAM User created with active Access Key and AmazonRoute53FullAccess permissions.  The Access Key ID and Secret should be in your ```.aws/credentials``` file.
```
cat ~/.aws/credentials
[default]
aws_access_key_id= "********************"
aws_secret_access_key = "****************************************"
```

## Limitations

- **NOTE:** I can't figure out how to get terraform to do proper dynamic variables for getting the IP, and I can't null_resource with local_exec to run everytime reliablably, so we're going to leverage TF_VARS_ environment variables.  See [https://www.terraform.io/docs/configuration/variables.html#environment-variables](https://www.terraform.io/docs/configuration/variables.html#environment-variables)
- This requires a script to be run **BEFORE** terraform commands.  If you are using cron, you *must* run the bash **1st** **AND** make sure you pass that environment to the shell running the plan!
- On Windows, should be able to do similar with a PowerShell script. The command to do the DNS lookup is ```Resolve-DnsName -Name myip.opendns.com -Server resolver1.opendns.com``` but this does not return a "short" output of IP address only.  Some text transformation would be required, then set the env variable with ```$Env:TF_VARS_myip = "ip"```

## Usage

**create** proper ```.aws/credentials```

**Clone the Repo:**

```
git clone git@github.com:wutangfinancial/terraform-route53-dynamic-dns.git
cd terraform-route53-dynamic-dns
```

**update** ```variables.tf``` with your values for ```region``` ```my_route53_zone_id``` and ```my_fqdn``` (FQDN of the A record you'd like to create)

**Get your IP in your environment:**

```
source get_myip.env
```

**Run the terraform:**

```
terraform init
terraform plan
terraform apply
```

## Author

- [Adam Salowitz](https://github.com/wutangfinancial)

## No Support

This script and terraform plan comes with **NO SUPPORT.**  Windows is NOT supported at this time.

## License

This work is licensed under a [Creative Commons Attribution 4.0 International License.](http://creativecommons.org/licenses/by/4.0/)



