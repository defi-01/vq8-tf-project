resource "aws_instance" "vq8_instance" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.vq8_subnet.id
  key_name                    = "vq8-key"
  vpc_security_group_ids      = [aws_security_group.vq8_security_group.id]
  user_data = filebase64("${path.module}/user-data.yml")
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

  tags = {
    Name = "vq8-ec2"
    Environment = "PROD"
    Project     = "vq8"
  }
}
