module "networking" {
  source = "github.com/aumthakkar/tf-aws-vpc-with-rancher-k3s.git"

  name_prefix = "pht-dev"
  region      = var.region

  ssh_access_ip  = var.ssh_access_ip
  vpc_cidr_block = "10.0.0.0/16"

  public_subnet_count  = 2
  private_subnet_count = 3

  auto_create_subnet_cidr   = true
  public_subnet_cidr_block  = var.public_subnet_cidr_block
  private_subnet_cidr_block = var.private_subnet_cidr_block

  create_db_subnet_group = true

  db_storage        = 10
  db_instance_class = "db.t3.micro"
  db_engine         = "mysql"
  db_engine_version = "8.0.39"

  db_identifier = "pht-db"
  dbname        = var.dbname
  dbuser        = var.dbuser
  dbpassword    = var.dbpassword

  skip_db_snapshot = true

  tg_port     = 8000
  tg_protocol = "HTTP"

  lb_healthy_threshold   = 2
  lb_unhealthy_threshold = 2
  lb_interval            = 30
  lb_timeout             = 2

  lb_listener_port     = 80
  lb_listener_protocol = "HTTP"

  instance_count = 1
  instance_type  = "t3.micro"

  key_name        = "mtckey"
  public_key_path = var.public_key_path

  instance_vol_size = 10
  dbpass            = var.dbpassword

  private_key_path = var.private_key_path

  host_port = 8000
}


