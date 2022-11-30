# route53-healthchecks-EIP
terraform-aws-route53-healthcheck
Terraform AWS Route53 Healthcheck Module

Managed by @gkranasinghe

The module creates:

SNS Topic
SNS Subscription (e.g. PagerDuty)
Route53 Healthcheck
Cloudwatch Metric Alarm

Example:
```
module "route53-health-check" {
    source  = "../../"
    env                   = "production"
    name                  = "sftp-monitoring"
    ip_address = ""
    subscription_endpoint = ""
}
```
