module "route53-health-check" {
    source  = "../../"
    env                   = "production"
    name                  = "sftp-monitoring"
    ip_address = ""

    subscription_endpoint = ""

}