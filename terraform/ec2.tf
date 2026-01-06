resource "aws_key_pair" "terraform" {
  key_name   = "terraform-key"
  public_key = file("~/.ssh/terraform-key.pub")
}

data "aws_ami" "amazon_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }

  owners = ["amazon"]
}

resource "aws_instance" "public" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.ssh.id]
  associate_public_ip_address = true
  key_name                    = aws_key_pair.terraform.key_name

  tags = {
    Name = "public-ec2"
  }
}

resource "aws_instance" "private" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.private.id
  vpc_security_group_ids = [aws_security_group.ssh.id]
  key_name               = aws_key_pair.terraform.key_name

  tags = {
    Name = "private-ec2"
  }
}

