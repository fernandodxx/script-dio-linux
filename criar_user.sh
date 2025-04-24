#!/bin/bash

echo "Creating system users..."

PASSWORD=$(openssl passwd -crypt Password123)

for USER in guest10 guest11 guest12 guest13
do
  useradd $USER -c "Guest user" -s /bin/bash -m -p $PASSWORD
  passwd $USER -e
done

echo "Done!"