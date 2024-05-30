module "security_groups" {
  source = "../../security_groups"
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  security_groups = [module.security_groups.ec2_security_group_id]

  tags = {
    Name = "Terraform-EC2"
  }
}
