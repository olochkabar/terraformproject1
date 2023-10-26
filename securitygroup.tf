resource "aws_security_group" "olochsg" {
  name        = "olochsg"
  description = "Allow inbound traffic"

  dynamic "ingress" {
    iterator = port
    for_each = var.ingressports
    content {
    from_port        = port.value
    to_port          = port.value
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    }
  }

  dynamic "egress" {
    iterator = port
    for_each = var.egressports
    content {
    from_port        = port.value
    to_port          = port.value
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    }
  }

  tags = {
    Name = "olochsg"
  }
}
