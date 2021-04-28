resource "aws_security_group" "security_group" {
  name        = "ec2_instance_sg"
  description = "ec2_instance_sg"

  dynamic "ingress" {
    for_each = var.ingress_list
    iterator = ingress_ports
    content {
      description = ingress_ports.key 
      from_port   = ingress_ports.value.port
      to_port     = ingress_ports.value.port
      protocol    = "tcp"
      cidr_blocks = ingress_ports.value.cidr_blocks
    }
  }
  dynamic "egress" {
    for_each = var.egress_list
    iterator = egress_ports
    content {
      description = egress_ports.key 
      from_port   = egress_ports.value.port
      to_port     = egress_ports.value.port
      protocol    = "tcp"
      cidr_blocks = egress_ports.value.cidr_blocks
    }
  }
}
