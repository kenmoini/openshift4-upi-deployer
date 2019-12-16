data "aws_vpc" "ocp_vpc" {
  id = "${var.private_vpc_id}"
}

data "aws_subnet" "ocp_pri_subnet" {
  count       = "${length(var.private_vpc_private_subnet_ids)}"
  id          = "${element(var.private_vpc_private_subnet_ids, count.index)}"
}
