variable "env" {}

variable "name" {
  description = "The name of the monitoring and name of the subscription service endpoint"
}

variable "subscription_endpoint" {
  description = "Endpoint endpoint for SNS topic subscription, PagerDuty, Slack etc."
}

variable "endpoint_auto_confirms" {
  type        = bool
  default     = true
  description = "Endpoint endpoint for SNS topic subscription, PagerDuty (https://events.pagerduty.com/integration/<Integration Key>/enqueue)"
}

variable "ip_address" {
  description = "The ip address of the endpoint to be monitored"
}

variable "subscription_endpoint_protocol" {
  default     = "https"
  description = "Endpoint protocol for SNS topic subscription"
}

variable "failure_threshold" {
  default     = "3"
  description = "The number of consecutive health checks that an endpoint must pass or fail."
}

variable "request_interval" {
  default     = "30"
  description = "The number of seconds between the time that Amazon Route 53 gets a response from your endpoint and the time that it sends the next health-check request."
}

variable "cw_alarm_namespace" {
  default     = "AWS/Route53"
  description = "Namespace of Cloudwatch metric alarm"
}

variable "cw_alarm_comparison_operator" {
  default     = "LessThanThreshold"
  description = "Comparison Operator of Cloudwatch metric alarm"
}

variable "cw_alarm_metric_name" {
  default     = "HealthCheckStatus"
  description = "Metric name of Cloudwatch metric alarm"
}

variable "cw_alarm_evaluation_periods" {
  default     = "1"
  description = "Evaluation periods of Cloudwatch metric alarm"
}

variable "cw_alarm_period" {
  default     = "60"
  description = "Period of Cloudwatch metric alarm"
}

variable "cw_alarm_statistic" {
  default     = "Minimum"
  description = "Statistic of Cloudwatch metric alarm"
}

variable "cw_alarm_threshold" {
  default     = "1"
  description = "Threshold of Cloudwatch metric alarm"
}

variable "cw_alarm_unit" {
  default     = "None"
  description = "Unit of Cloudwatch metric alarm"
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Gives ability to enable or disable a module"
}
