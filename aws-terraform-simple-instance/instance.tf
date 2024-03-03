resource "aws_instance" "simple-instance" {
  ami                         = "ami-0c7217cdde317cfec" //TODO Resolver o Data para AMI
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.generated_key.key_name
  vpc_security_group_ids      = [aws_security_group.instance-sg.id]
  associate_public_ip_address = true

  subnet_id = "subnet-04e96a0d034c23849" //TODO  preciso resolver o data pro subnet - nao consigo pegar os id da subnet

  tags = {
    Name = "simple-instance"
    App  = "nginx"
    Tier = "frontend"
  }
}

