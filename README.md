Eval2 - Contenedorizacion y CI/CD con AWS

Proyecto de contenedorizacion y despliegue automatizado de microservicios usando Docker, GitHub actions y AWS


Estructura del proyecto

La carpeta Eval2 tiene los dos backends en Spring Boot, el frontend en React la carpeta infra con los archivos de terraform divididos en dos etapas, el pipeline de github actions y el docker-compose


Como levantar localmente

Tener Docker Desktop instalado y correr este comando en la raiz del proyecto

docker compose up --build

Una vez que levante se puede acceder al frontend en http://localhost  la api de ventas en http://localhost:8080 y la api de despachos en http://localhost:8081


Terraform

La infra esta dividida en dos etapas

La etapa_1 solo crea los repositorios ECR en AWS, se corre primero para que el pipeline pueda subir las imagenes

La etapa_2 crea todo lo demas VPC subnet internet gateway, security group, ECR y la EC2 con Docker ya instalado

Para correr cada etapa hay que entrar a la carpeta y ejecutar terraform init y luego terraform apply


Secrets que hay que agregar en GitHub

Hay que ir a Settings del repositorio luego Secrets and variables, Actions y agregar los siguientes

AWS_ACCESS_KEY_ID credencial de aws
AWS_SECRET_ACCESS_KEY credencial de aws
AWS_SESSION_TOKEN token de sesion de aws academy
AWS_ACCOUNT_ID el id de la cuenta aws
EC2_HOST la ip publica de la instancia EC2
EC2_USER el usuario ssh generalmente ec2-user
EC2_KEY la clave privada .pem de la instancia

Intengrasntes del grupo

Enzo Ramirez
Nicolas ortiz
Benjamin Alegria
