#Création d’une instance EC2
resource "aws_instance" "ec2" {
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro"
  vpc_security_group_ids = [
    "sg-f8af9ee0cc0516b81"
  ]

  tags = {
    Name = "datacenter-ec2"
  }
}

#Création d’une AMI à partir de cette instance
resource "aws_ami_from_instance" "datacenter_ami" {
  name               = "datacenter-ec2-ami"
  source_instance_id = aws_instance.ec2.id
}
