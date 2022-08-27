#!/bin/bash

echo "Criando diretórios dos usuários..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupo de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "criando usuários e vinculando a seus grupos..." 

useradd -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_ADM carlos
useradd -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_ADM maria
useradd -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_ADM joao
useradd -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_VEN debora
useradd -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_VEN sebastiana
useradd -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_VEN roberto
useradd -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_SEC josefina
useradd -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_SEC amanda
useradd -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_SEC rogerio

echo "Vinculando grupos a seus respectivos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Colocando as respectivas permissões nos diretórios..."

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "fim..."
