output "vpc" {
  value = "${module.vpc.vpc}"
}
output "private_subnet1" {
  value = "${module.vpc.private_subnets[0]}"
}


output "private_subnet2" {
  value = "${module.vpc.private_subnets[1]}"
}

output "private_subnet3" {
  value = "${module.vpc.private_subnets[2]}"
}


output "public_subnet1" {
  value = "${module.vpc.public_subnets[0]}"
}


output "public_subnet2" {
  value = "${module.vpc.public_subnets[1]}"
}

output "public_subnet3" {
  value = "${module.vpc.public_subnets[2]}"
}

output "region" {
  value = "${module.vpc.region}"
}