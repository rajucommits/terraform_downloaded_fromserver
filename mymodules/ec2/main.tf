#keypair
resource "aws_key_pair" "mykey" {
  key_name   = var.mykey 
  public_key = var.mykey_pub 
}

#ec2 module
resource "aws_instance" "web" {
  ami           = var.myami
  instance_type = var.myinstancetype
  key_name = aws_key_pair.mykey.key_name
  subnet_id = var.sub_id
  vpc_security_group_ids = [var.secgrp_id]

  tags = {
    Name = var.myec2name
  }
}
