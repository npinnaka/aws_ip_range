# aws_ip_range

terraform module for fetch aws ip ranges 

1. How to get EC2 Instance connect IP range for a region?
```terraform
module "ip_range_ec2" {
  source  = "./ip_range"
  region  = var.region
  service = "EC2_INSTANCE_CONNECT"
}
#returns cidrs for ec2
output "ec2_ip_range_for_us_east_1" {
  value = module.ip_range_ec2.cidrs
}
```
2. How to get S3 range for a region?
```terraform
module "ip_range_s3" {
  source  = "./ip_range"
  region  = var.region
  service = "S3"
}
# return the cidrs for s3
output "s3_ip_range_for_us_east_1" {
  value = module.ip_range_s3.cidrs
}
```

