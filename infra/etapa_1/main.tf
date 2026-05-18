terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

#ECR:
resource "aws_ecr_repository" "back_ventas" {
  name = "${var.project_name}-back-ventas"
  force_delete = true
}
resource "aws_ecr_repository" "back_despachos" {
  name = "${var.project_name}-back-despachos"
  force_delete = true
}
resource "aws_ecr_repository" "frontend" {
  name = "${var.project_name}-frontend"
  force_delete = true
}
