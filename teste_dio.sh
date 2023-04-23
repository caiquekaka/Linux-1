#!/bin/bash 

echo "Criando diretórios" 

mkdir /publico
mkdir /adm 
mkdir /ven 
mkdir /sec

echo "Criando grupo de usuário" 

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuário"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_VEN
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_VEN
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_VEN

useradd matteo -m -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_ADM
useradd leticia -m -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_ADM
useradd kaka -m -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_ADM

useradd larissa -m -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_SEC
useradd izabel -m -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_SEC
useradd cesar -m -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_SEC


echo "permissões diretórios" 

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico 

echo "FIM!" 

