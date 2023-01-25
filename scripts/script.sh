#!/bin/bash


echo "Criando diretórios!!!"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec 

echo "Criando grupos de usuários!!!"


groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "criando usuário!!!"

useradd joao -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd ana -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd luan -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM


useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd adriana -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd pedro -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN


useradd luciana -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC


echo "Especificando permissões dos diretórios!!!"

chown root:GRP_ADM /admin
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /admin
chmod 770 /ven
chmod 770 /sec

echo "Executado com suceso!!!"
