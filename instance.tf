resource "aws_instance" "instance" {
  user_data                   = var.user_data
  ami                         = var.ami
  iam_instance_profile        = var.instance_profile_name
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.sg_id]
  associate_public_ip_address = var.associate_public_ip
  key_name                    = var.keypair_name
  tags = {
    Name    = var.instance_name
    Environment = var.ambiente
    Project = var.projeto
    Automacao = var.automacao
  }

  lifecycle {
    ignore_changes = [
      # Ignore changes to tags, e.g. because a management agent
      # updates these based on some ruleset managed elsewhere.
      tags,
      associate_public_ip_address
    ]
  }

  # EBS root
  root_block_device {
    volume_size = var.root_block_device_size
    volume_type = var.root_block_device_type
  }

  disable_api_termination = var.disable_api_termination
}