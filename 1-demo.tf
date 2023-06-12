resource "aws_instance" "web" {
  ami           = "973714476881"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}