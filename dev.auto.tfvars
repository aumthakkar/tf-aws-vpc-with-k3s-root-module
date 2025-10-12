region         = "eu-north-1"
vpc_cidr_block = "10.0.0.0/16"

ssh_access_ip = "90.196.0.61/32"

public_subnet_cidr_block  = ["10.0.22.0/24", "10.0.24.0/24"]
private_subnet_cidr_block = ["10.0.21.0/24", "10.0.23.0/24"]

# Database related .tfvars
dbname     = "rancher"
dbuser     = "pranav"
dbpassword = "t4b!3s2025"

public_key_path  = "/Users/pranav/Documents/Programming/Terraform/oct25-mtcitf/aws-tf/mtckey.pub"
private_key_path = "/Users/pranav/Documents/Programming/Terraform/oct25-mtcitf/aws-tf/mtckey"