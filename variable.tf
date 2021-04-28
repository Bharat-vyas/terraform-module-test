variable "ingress_list" {
    type = list
    default = [{
    description = "Allow port 80",
    port = 80,
    cidr_blocks = ["0.0.0.0/0"],
  }]
}

variable "egress_list" {
    type = list
    default = [{
    description = "Allow port 80 for egress",
    port = 80,
    cidr_blocks = ["0.0.0.0/0"],
  }]
}

