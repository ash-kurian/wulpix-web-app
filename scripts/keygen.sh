#!/bin/bash
ARG=$1
if [ $# -lt 1 ]; then
    echo "No Argument Found! "
    read -p 'Enter key prefix: ' ARG
fi
if [ $ARG = "help" ]; then
    echo "Usage : bash key-generate.sh <PREFIX>"
    exit 1
fi
ssh-keygen -t rsa -C $ARG-ssh-kp -N "" -f $ARG-ssh-kp >>/dev/null 2>&1
mv $ARG-ssh-kp $ARG-ssh-kp.pem
echo -e "\n\n $ARG ssh keypair \n"
cat $ARG-ssh-kp.pub
