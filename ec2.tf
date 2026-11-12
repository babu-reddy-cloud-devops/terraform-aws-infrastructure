# Get latest Amazon Linux 2023 AMI
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# Create EC2 Instance
resource "aws_instance" "web_server" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.web_sg.id]
  associate_public_ip_address = true

  # Attach IAM Instance Profile
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

  # Enable IMDSv2
  metadata_options {
    http_tokens = "required"
  }

  # Install and start Nginx
  user_data = <<-EOF
    #!/bin/bash
    dnf update -y
    dnf install -y nginx
    systemctl enable nginx
    systemctl start nginx
    echo "Hello from Terraform EC2" > /usr/share/nginx/html/index.html
  EOF

  tags = {
    Name        = "devops-web-server"
    Environment = var.environment
  }
}