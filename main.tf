resource "ibm_is_vpc" "opa_vpc" {
  name = "testdrift"
}
resource "ibm_is_subnet" "opa_subnet" {
  name            = var.subnet_name
  vpc             = ibm_is_vpc.opa_vpc.id
  zone            = "us-south-1"
  total_ipv4_address_count  = 256
}