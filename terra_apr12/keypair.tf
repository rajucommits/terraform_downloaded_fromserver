resource "aws_key_pair" "mykey" {
  key_name   = var.mykeyname
  public_key = var.mypubkey
}
