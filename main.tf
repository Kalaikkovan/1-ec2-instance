resource "aws_instance" "my-test-instance" {
  ami             = "${data.aws_ami.ubuntu.id}"
  instance_type   = "t2.micro"
  key_name	  = "aws_ubuntufacility"
  count 	  = 2
  tags {
    Name = "test-instance"
  }
}
