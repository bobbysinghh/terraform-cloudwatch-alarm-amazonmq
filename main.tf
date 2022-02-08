provider "aws" {
  region  = "us-east-1"
  profile = "phyllo"

}

module "metric_alarm" {
  source = "./modules/metric-alarm/"

  alarm_name          = "cloudwatch-terraform-mq"
  alarm_description   = "Message Count in Amazon MQ"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 1
  threshold           = 10
  period              = 60
  unit                = "Count"

  namespace   = "AWS/AmazonMQ"
  metric_name = "MessageCount"
  statistic   = "SampleCount"

  dimensions = {
    Broker = "mq-terraform-test"
  }

  alarm_actions = ["arn:aws:sns:eu-west-1:xxxxxxxxx:my-sns-queue"]
}