# Configure these variables

variable "sleep_time_in_seconds" {
  description = "Sleep time"
  default     = "10s"
}

variable "heredoc_multi_line" {
  description = "Enter name"
  type = string
  default = `<<EOT
This
is
Heredoc
multiline
EOT`
}

variable "plain_multi_line" {
  description = "Enter name"
  type = string
  default = `<<This
is
plain
multiline`
}

output "heredoc-multi-line" {
  value = var.heredoc_multi_line
}

output "plain_multi_line" {
  value = var.plain_multi_line
}

