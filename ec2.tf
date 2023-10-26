
resource "aws_instance" "olochinst" {
  ami = data.aws_ami.oloch.id
  instance_type = var.ec2type["dev"]
  user_data = file("${path.module}/userdata.sh")
  vpc_security_group_ids = [ aws_security_group.olochsg.id ]
  key_name = var.sshkey
  count = 2
  tags = {
    name = "oloch-${count.index}"
  }
}