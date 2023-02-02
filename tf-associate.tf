resource "aws_instance" "my_ec2" {
  ami = "ami-00785f4835c6acf64"
  instance_type = var.instance_type
  tags = {
    Password = "${file("../secret.txt")}"
  }
}
