resource "aws_instance" "myec2" {
  ami           = var.myami
  instance_type = var.myinstancetype
  key_name = aws_key_pair.mykey.key_name

  tags = {
    Name = var.myec2name
  }
}
