resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  security_groups = [aws_security_group.ec2_security_group.name]

  tags = {
    Name = "Terraform-EC2"
  }
}
