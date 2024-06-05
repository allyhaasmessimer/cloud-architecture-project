resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  security_groups = [var.ec2_security_group_name]

  tags = {
    Name = "Terraform-EC2"
  }
}
