resource "aws_instance" "myec2" {
   ami = "ami-0742b4e673072066f"
   instance_type = var.instance_type_for_ec2
   key_name = "bharat.pem"
   security_groups = [ var.ec2_sg ]
}
