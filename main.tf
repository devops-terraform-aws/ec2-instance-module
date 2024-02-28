resource "aws_instance" "instance" {
  ami                         = var.ami
  key_name                    = var.key_name
  instance_type               = var.instance_type
  security_groups             = var.security_groups
  vpc_security_group_ids      = var.vpc_security_group_ids
  user_data                   = var.user_data
  associate_public_ip_address = true
  tags = {
    Name = var.name
  }
}
