resource "aws_instance" "bastion" {
  ami                         = var.ami_id
  instance_type               = var.bastion_instance_type
  subnet_id                   = aws_subnet.public[0].id
  vpc_security_group_ids      = [aws_security_group.bastion-sg.id]
  associate_public_ip_address = true
  key_name                    = var.key_name

  tags = {
    Name = "bastion-server"
  }
}

resource "aws_iam_instance_profile" "mgmt_profile" {
  name = "eksctl-mgmt-profile"
  role = aws_iam_role.eksctl_mgmt_role.name

  depends_on = [aws_iam_role.eksctl_mgmt_role]
}

resource "aws_instance" "mgmt" {
  ami                         = var.ami_id
  instance_type               = var.mgmt_instance_type
  subnet_id                   = aws_subnet.private-mgmt[0].id
  vpc_security_group_ids      = [aws_security_group.mgmt-sg.id]
  associate_public_ip_address = false
  key_name                    = var.key_name
  iam_instance_profile        = aws_iam_instance_profile.mgmt_profile.name

  tags = {
    Name = "mgmt-server"
    Role = "mgmt"
  }
}
