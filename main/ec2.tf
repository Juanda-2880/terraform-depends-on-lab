resource "aws_instance" "ec2-lab-instance-lab-2880-lab-create" {
  ami           = "ami-06f1fc9ae5ae7f31e"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.lab_subnet_practice_subnet.id
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_default_security_group.allow_tls.id]

    tags = {
    Name = "ec2-lab-instance-lab"
    }

}

