
resource "aws_secretsmanager_secret" "ec2_ami" {
  name = "ec2/testing/ami-id"
}

resource "aws_secretsmanager_secret_version" "ec2_ami" {
  secret_id     = aws_secretsmanager_secret.ec2_ami.id
  secret_string = "ami-0ed094fb1304fd857"
}
