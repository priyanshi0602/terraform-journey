module "nginx" {
  source = "./modules/nginx"

  container_name = "terraform-module-nginx"
  external_port  = 8083
}

output "container_name" {
  value = module.nginx.container_name
}

output "container_port" {
  value = module.nginx.container_port
}