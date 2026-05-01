resource "aws_instance" "example" {
  ami = aws_secretsmanager_secret_version.ec2_ami.secret_string
  instance_type = "t3.micro"
}