data "aws_ami" "oloch" {
  most_recent      = true
  owners           = ["988220189811"]

  filter {
    name   = "name"
    values = ["zenoss-collector-*-1686244711"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

filter {
    name   = "architecture"
    values = ["x86_64"]
  }


  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

