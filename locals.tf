
locals {
  ## The SNS arn we shuld use on the monitor, this is either the one we
  ## created or the one provided by the user
  sns_topic_arn = var.sns_topic_arn
}
