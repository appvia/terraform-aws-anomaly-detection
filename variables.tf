variable "monitors" {
  description = "A collection of cost anomaly monitors to create"
  type = list(object({
    name = string
    # The name of the monitor
    monitor_type = optional(string, "DIMENSIONAL")
    # The type of monitor to create
    monitor_dimension = optional(string, "DIMENSIONAL")
    # The dimension to monitor
    monitor_specification = optional(string, null)
    # The specification to monitor
    notify = optional(object({
      frequency = string
      # The frequency of notifications
      threshold_expression = optional(any, null)
      # The threshold expression to use for notifications
      }), {
      frequency = "DAILY"
    })
  }))
}

variable "sns_topic_arn" {
  description = "The ARN of an existing SNS topic for notifications"
  type        = string
  default     = null
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
}
