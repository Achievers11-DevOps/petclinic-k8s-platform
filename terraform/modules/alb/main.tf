# ALB
resource "aws_load_balancer" "this" {
  name               = "${var.name}-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.this.id]
  subnets            = var.subnet_ids

  tags = {
    Name        = "${var.name}-alb"
    Environment = var.environment
  }
}