resource "aws_key_pair" "mykeypair" {
  key_name   = "${var.env}-mykeypair"
  public_key = data.tls_public_key.this.public_key_openssh
}

resource "tls_private_key" "rsa_key" {
  algorithm = "RSA"
}

data "tls_public_key" "this" {
  private_key_openssh = var.private_key
}
