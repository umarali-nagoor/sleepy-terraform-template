variable "vpc_name"{
  type = string
  default="testvpcone"
}

variable "vpc_tags" {
  type = list(string)
  default = ["tag:test1", "tag:test2"]
}

