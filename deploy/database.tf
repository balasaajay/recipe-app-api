resource "aws_db_subnet_group" "main" {
  name = "${local.prefix}-main"
  subnet_ids = [
    aws_subnet.private_a.id,
    aws_subnet.private_b.id,
  ]

  tags = merge(
    local.common_tags,
    map("Name", "${local.prefix}-main")
  )
}

# add a security group
resource "aws_security_group" "rds" {
  description = "Allow access to RDS DB instance"
  name        = "${local.prefix}-rds-inbound-access"
  vpc_id      = aws_vpc.main.id

  ingress {
    protocol  = "tcp"
    from_port = 5432
    to_port   = 5432
    # allow access from bastion only
    security_groups = [
      aws_security_group.bastion.id,
      aws_security_group.ecs_service.id
    ]
  }

  tags = local.common_tags
}

resource "aws_db_instance" "main" {
  identifier              = "${local.prefix}-db"
  name                    = "recipe" # Database name in the instance
  allocated_storage       = 20
  storage_type            = "gp2"
  engine                  = "postgres"
  instance_class          = "db.t3.micro"
  db_subnet_group_name    = aws_db_subnet_group.main.name
  username                = var.db_username
  password                = var.db_password
  backup_retention_period = 0
  multi_az                = false
  skip_final_snapshot     = true
  vpc_security_group_ids  = [aws_security_group.rds.id]

  tags = merge(
    local.common_tags,
    map("Name", "${local.prefix}-main")
  )
}