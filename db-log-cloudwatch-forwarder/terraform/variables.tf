variable "name_prefix" {
  description = "A prefix that will be added to resources so that they are unique"
  default     = "db_log_cw_forwarder"
}

variable "filter_patterns" {
  description = "List of CloudWatch filter patterns"
  default     = []
  type        = list(string)
}

variable "log_group_name" {
  description = "List of Cloudwatch log group names"
}

variable "lambda_handler" {
  description = "The handler for the Lambda function"
  default     = "main.lambda_handler"
}

variable "lamda_runtime" {
  description = "The runetime for the Lambda function"
  default     = "python3.7"
}

variable "lambda_timeout_seconds" {
  description = "Timeout for the lambda function that copies log entries to cloudwatch. Modify if you experience timeouts"
  default     = 30
}

variable "lambda_memory_size" {
  description = "Memory allocation for the lambda function that copies log entries to cloudwatch. Modify if you experience out of memory errors"
  default     = 512
}

variable "db_logs_state_bucket_name" {
  description = "The bucket that records the forwarded db logs"
}

variable "lambda_name" {
  description = "The name of the Lambda function that moves db logs to cloudwatch "
}

variable "DB_INSTANCE_IDENTIFIERS" {
  description = "db instances whose logs will be forwarded to cloudwatch, separated with ','"
}

variable "s3_key" {
  description = "The s3 key for the Lambda artifact."
}

variable "lambda_s3_bucket" {
  description = "The bucket where the lambda function that forwards the db logs to cloudwatch."
}
