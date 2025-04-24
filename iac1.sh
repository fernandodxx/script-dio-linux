#!/bin/bash

echo "Creating directories..."

mkdir /public
mkdir /adm
mkdir /sales
mkdir /security

echo "Creating user groups..."

groupadd GRP_ADM
groupadd GRP_SALES
groupadd GRP_SECURITY

echo "Creating users..."

PASSWORD=$(openssl passwd -crypt Password123)

# ADM users
for USER in carlos maria joao
do
  useradd $USER -m -s /bin/bash -p $PASSWORD -G GRP_ADM
done

# Sales users
for USER in debora sebastiana roberto
do
  useradd $USER -m -s /bin/bash -p $PASSWORD -G GRP_SALES
done

# Security users
for USER in josefina amanda rogerio
do
  useradd $USER -m -s /bin/bash -p $PASSWORD -G GRP_SECURITY
done

echo "Setting directory permissions..."

chown root:GRP_ADM /adm
chown root:GRP_SALES /sales
chown root:GRP_SECURITY /security

chmod 770 /adm
chmod 770 /sales
chmod 770 /security
chmod 777 /public

echo "Setup complete!"