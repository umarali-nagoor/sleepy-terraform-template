

resource "ibm_is_vpc" "vpc" {
  name = var.vpc_name
  tags = var.vpc_tags
}
