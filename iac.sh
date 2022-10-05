#!/bin/bash



#metodo  simples

echo "Criando Diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo " Criando  Grupos "
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo " Criando Users "
useradd carlos.silva -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria.silva -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao.silva -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd debora.silva -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto.silva -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd josefina.silva -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda.silva -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio.silva -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC


echo " Permissões de Diretorio"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec


echo " Obrigado "


