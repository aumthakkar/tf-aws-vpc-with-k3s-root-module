output "load_balancer_endpoint" {
  value = module.networking.load_balancer_endpoint
}

output "instance_ips" {
  value = { for i in module.networking.instance_outputs : i.tags.Name => "${i.public_ip}:${module.networking.instance_port}" }
}

# output "kubeconfig" {
#   value = [for i in module.networking.instance_outputs : "export KUBECONFIG=./k3s-${i.tags.Name}.yaml"]
# }