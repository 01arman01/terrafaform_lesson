data "aws_ami" "amazon" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"] #For amazon Linux 2
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["137112412989"] #Amazon
}


resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon.id
  instance_type = var.instance_type
  tags = {
    name = "${var.tag_name}-1"
  }
}


