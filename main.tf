variable "region" {
  default = "us-east-1"
}

module "ip_range_ec2" {
  source  = "./ip_range"
  region  = var.region
  service = "EC2_INSTANCE_CONNECT"
}

output "ec2_ip_range_for_us_east_1" {
  value = module.ip_range_ec2.cidrs
}

module "ip_range_s3" {
  source  = "./ip_range"
  region  = var.region
  service = "S3"
}

output "s3_ip_range_for_us_east_1" {
  value = module.ip_range_s3.cidrs
}


