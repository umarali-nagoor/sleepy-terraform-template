# Configure these variables

variable "sleep_time_in_seconds" {
  description = "Sleep time"
  default     = "300s"
}

variable "name" {
  description = "Enter name"
  type = string
  default = "multi-line-test"
}

output "multi-line-value" {
  value = var.name
}

