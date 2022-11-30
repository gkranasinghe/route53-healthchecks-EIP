## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_metric_alarm.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_route53_health_check.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_health_check) | resource |
| [aws_sns_topic.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic_subscription.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cw_alarm_comparison_operator"></a> [cw\_alarm\_comparison\_operator](#input\_cw\_alarm\_comparison\_operator) | Comparison Operator of Cloudwatch metric alarm | `string` | `"LessThanThreshold"` | no |
| <a name="input_cw_alarm_evaluation_periods"></a> [cw\_alarm\_evaluation\_periods](#input\_cw\_alarm\_evaluation\_periods) | Evaluation periods of Cloudwatch metric alarm | `string` | `"1"` | no |
| <a name="input_cw_alarm_metric_name"></a> [cw\_alarm\_metric\_name](#input\_cw\_alarm\_metric\_name) | Metric name of Cloudwatch metric alarm | `string` | `"HealthCheckStatus"` | no |
| <a name="input_cw_alarm_namespace"></a> [cw\_alarm\_namespace](#input\_cw\_alarm\_namespace) | Namespace of Cloudwatch metric alarm | `string` | `"AWS/Route53"` | no |
| <a name="input_cw_alarm_period"></a> [cw\_alarm\_period](#input\_cw\_alarm\_period) | Period of Cloudwatch metric alarm | `string` | `"60"` | no |
| <a name="input_cw_alarm_statistic"></a> [cw\_alarm\_statistic](#input\_cw\_alarm\_statistic) | Statistic of Cloudwatch metric alarm | `string` | `"Minimum"` | no |
| <a name="input_cw_alarm_threshold"></a> [cw\_alarm\_threshold](#input\_cw\_alarm\_threshold) | Threshold of Cloudwatch metric alarm | `string` | `"1"` | no |
| <a name="input_cw_alarm_unit"></a> [cw\_alarm\_unit](#input\_cw\_alarm\_unit) | Unit of Cloudwatch metric alarm | `string` | `"None"` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Gives ability to enable or disable a module | `bool` | `true` | no |
| <a name="input_endpoint_auto_confirms"></a> [endpoint\_auto\_confirms](#input\_endpoint\_auto\_confirms) | Endpoint endpoint for SNS topic subscription, PagerDuty (https://events.pagerduty.com/integration/<Integration Key>/enqueue) | `bool` | `true` | no |
| <a name="input_env"></a> [env](#input\_env) | n/a | `any` | n/a | yes |
| <a name="input_failure_threshold"></a> [failure\_threshold](#input\_failure\_threshold) | The number of consecutive health checks that an endpoint must pass or fail. | `string` | `"3"` | no |
| <a name="input_ip_address"></a> [ip\_address](#input\_ip\_address) | The ip address of the endpoint to be monitored | `any` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the monitoring and name of the subscription service endpoint | `any` | n/a | yes |
| <a name="input_request_interval"></a> [request\_interval](#input\_request\_interval) | The number of seconds between the time that Amazon Route 53 gets a response from your endpoint and the time that it sends the next health-check request. | `string` | `"30"` | no |
| <a name="input_subscription_endpoint"></a> [subscription\_endpoint](#input\_subscription\_endpoint) | Endpoint endpoint for SNS topic subscription, PagerDuty, Slack etc. | `any` | n/a | yes |
| <a name="input_subscription_endpoint_protocol"></a> [subscription\_endpoint\_protocol](#input\_subscription\_endpoint\_protocol) | Endpoint protocol for SNS topic subscription | `string` | `"https"` | no |

## Outputs

No outputs.
