output "for_output_list" {
  description = "This is for loop with list"
  value       = [for instance in aws_instance.sample-ec2vm : instance.public_ip]
}

output "for_output_map" {
  description = "This is for loop with map"
  value       = { for instance in aws_instance.sample-ec2vm : instance.id => instance.public_ip }
}

output "for_output_map_advanceed" {
  description = "This is for loop with advanced map"
  value       = { for count, instance in aws_instance.sample-ec2vm : count => instance.public_ip }
}

output "for_output_splat_operator" {
  description = "his is for loop with splat operator"
  value       = aws_instance.sample-ec2vm[*].public_ip
}