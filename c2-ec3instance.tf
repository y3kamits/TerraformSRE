resource "aws_instance" "sample-ec2vm" {
  #instance_type          = var.instance_type_list[0]  #"t2.micro"
  #
  instance_type          = var.instance_type_map["dev"]
  ami                    = aws_ami.amzlinux2.id #"ami-024c319d5d14b463e"
  user_data              = file("${path.module}/sampleapp.sh")
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  count                  = 2
  tags = {
    "Name" = "EC2-${count.index}"
  }
}