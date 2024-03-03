resource "aws_lb" "this" {
  count              = var.enable_alb ? 1 : 0
  name               = "${var.cluster_name}-alb"
  load_balancer_type = "application"
  subnets            = ["subnet-04e96a0d034c23849", "subnet-0af2a9a6fc5168c3d"]
  security_groups    = [aws_security_group.sg-alb.id]
  internal           = false
}
