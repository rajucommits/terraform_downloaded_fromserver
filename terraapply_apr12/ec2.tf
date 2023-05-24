resource "aws_instance" "web" {
  ami           = var.myami
  instance_type = var.myinstancetype
  key_name = aws_key_pair.mykey.key_name
  depends_on = [aws_key_pair.mykey, aws_vpc.myvpc]
  subnet_id = aws_subnet.mysubnet.id
  vpc_security_group_ids = [aws_security_group.mysg.id]

  tags = {
    Name = var.myec2name
  }
}
