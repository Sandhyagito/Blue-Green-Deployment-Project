output "cluster_id" {
  value = aws_eks_cluster.bluegreen_project.id
}

output "node_group_id" {
  value = aws_eks_node_group.bluegreen_project.id
}

output "vpc_id" {
  value = aws_vpc.bluegreen_project_vpc.id
}

output "subnet_ids" {
  value = aws_subnet.bluegreen_project_subnet[*].id
}
