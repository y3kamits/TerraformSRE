data "aws_availability_zones" "myzones" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}

resource "aws_instance" "sample-ec2vm" {
  #instance_type          = var.instance_type_list[0]  #"t2.micro"
  #
  instance_type          = var.instance_type_map["dev"]
  ami                    = data.aws_ami.amzlinux2.id #"ami-024c319d5d14b463e" #aws_ami.amzlinux2.id #
  user_data              = file("${path.module}/sampleapp.sh")
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  for_each = toset(data.aws_availability_zones.myzones)
  availability_zone = each.key

  tags = {
    "Name" = "EC2-${each.value}"
  }
}


/*resource "aws_instance" "myec2vm" {
  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  user_data              = file("${path.module}/sampleapp.sh")
  key_name               = var.instance_keypair
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  # Create EC2 Instance in all Availabilty Zones of a VPC  
  for_each = toset(data.aws_availability_zones.myzones.names)

  availability_zone = each.key # You can also use each.value because for list items each.key == each.value
  tags = {
    "Name" = "for_each-Demo-${each.value}"
  }
}*/