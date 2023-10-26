/*variable "ec2type" {
    type = list(string)
    default = [ "t2.micro", "t2.micro", "t2.micro" ]
}*/

variable "sshkey" {
    type = string
    default = "terraformkey"
}

variable "ec2type" {
    type = map(string)
    default = {
        dev = "t2.micro"
        prod = "t2.micro"
        stage = "t2.micro"
    }
  
}

variable "ingressports" {
    type = list(number)
    default = [22, 80, 443, 8080, 9000]
}

variable "egressports" {
    type = list(number)
    default = [22, 80, 443, 8080]
}