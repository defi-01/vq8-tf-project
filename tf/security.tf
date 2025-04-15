resource "aws_security_group" "vq8_security_group" {
  name        = "vq8-security-group"
  vpc_id      = aws_vpc.vq8_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [local.current_ip]
    description = "Allow SSH from my IP"
  }
  
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow HTTP from anywhere"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic"
  }

  tags = {
    Name = "vq8-SecurityGroup"
    Environment = "PROD"
    Project     = "vq8"
  }
}
