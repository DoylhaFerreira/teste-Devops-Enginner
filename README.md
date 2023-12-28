# teste-Devops-Enginner
Script de Automação, Terraform, Git, piperline 
DevOps Engineer Junior 

Criei uma EC2 na Aws 
Configurei o servidor web 
Acesso ao ip publico apartir da minha maquina 
chmod 400 "servidor-web.pem"
Ip particular ssh
ssh -i "servidor-web.pem" ubuntu@ec2-18-228-156-78.sa-east-1.compute.amazonaws.com 
Baixei o putty para fazer a conversão da chave, pois não consegui acessar com o formato .pem




Script Bash para instalar e configurar o servidor web Nginx em uma maquina virtual 
# para instalar o Nginx 
sudo apt update
sudo apt install nginx

# para que o Nginx continue rodando 
sudo systemctl start nginx
#para iniciar na inicialização 
sudo systemctl enable nginx  
Criei um script bin/bash
Um comando htlm 
<!DOCTYPE html
<html>
    <head>
        <title> Bem Vindo ao servidor Nginx!</title>
    </head>
     <body>
        <h1> Bem vindo a servidor Nginx.</h1>
     </body>
</html>
 
