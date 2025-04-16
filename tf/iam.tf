resource "aws_iam_role" "ec2_role" {
  name = "vq8-ec2-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole",
      Effect = "Allow",
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
  })
}

resource "aws_iam_role_policy_attachment" "cw_attach" {
  role       = aws_iam_role.ec2_role.name
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
}

resource "aws_iam_role_policy" "s3_access" {
  name = "vq8-s3-access-policy"
  role = aws_iam_role.ec2_role.name

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect = "Allow",
      Action = "s3:GetObject",
      Resource = "arn:aws:s3:::amazoncloudwatch-agent/*"
    }]
  })
}

resource "aws_iam_instance_profile" "ec2_profile" {
  name = "vq8-instance-profile"
  role = aws_iam_role.ec2_role.name
}

resource "aws_iam_role_policy" "cloudwatch_logs_access" {
  name = "vq8-cloudwatch-logs-policy"
  role = aws_iam_role.ec2_role.name

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Action = [
          "logs:CreateLogGroup",
          "logs:CreateLogStream",
          "logs:PutLogEvents",
          "logs:DescribeLogStreams"
        ],
        Resource = "*"
      }
    ]
  })
}
