resource "aws_instance" "web" {
  ami                    = "ami-0c94855ba95c71c99" # Ubuntu 20.04 in us-east-1; update if using another region
  instance_type          = "t2.micro"
  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = "WebServer"
  }

  # Optional: user_data to install a simple web server
  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update
              sudo apt-get install -y nginx
              sudo systemctl start nginx
              sudo systemctl enable nginx
              EOF
}
