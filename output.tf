output "cloudwatch_metric_alarm_arn" {
  description = "The ARN of the Cloudwatch metric alarm."
  value       = module.metric_alarm.cloudwatch_metric_alarm_arn
}

output "cloudwatch_metric_alarm_id" {
  description = "The ID of the Cloudwatch metric alarm."
  value       = module.metric_alarm.cloudwatch_metric_alarm_id
}

