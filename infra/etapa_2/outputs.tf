output "ec2_public_ip" {
  value = aws_instance.app.public_ip
}
output "back_ventas_ecr" {
  value = aws_ecr_repository.back_ventas.repository_url
}
output "back_despachos_ecr" {
  value = aws_ecr_repository.back_despachos.repository_url
}
output "frontend_ecr" {
  value = aws_ecr_repository.frontend.repository_url
}
