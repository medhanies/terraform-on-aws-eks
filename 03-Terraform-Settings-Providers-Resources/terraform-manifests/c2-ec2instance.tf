# Resource: EC2 Instance
resource "aws_instance" "myec2vm" {
  ami = "ami-0dfcb1ef8550277af"
  instance_type = "t3.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2 Demo"
  }
}