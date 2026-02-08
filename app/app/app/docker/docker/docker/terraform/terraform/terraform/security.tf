resource "aws_security_group" "secure_sg" {
  name   = "secure-sg"
  vpc_id = aws_vpc.secure_vpc.id

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
