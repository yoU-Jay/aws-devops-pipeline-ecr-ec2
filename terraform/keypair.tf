resource "aws_key_pair" "deployer_key" {
  key_name   = var.key_name
  public_key = file("id_rsa.pub")
}