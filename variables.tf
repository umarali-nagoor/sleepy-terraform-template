# Configure these variables

variable "sleep_time_in_seconds" {
  description = "Sleep time"
  default     = "300s"
}

variable "multi_line_varaible" {
  description = "Enter name"
  type = string
  default = <<EOT
hello
world
EOT
}

output "multi-line-value" {
  value = var.multi_line_varaible
}

