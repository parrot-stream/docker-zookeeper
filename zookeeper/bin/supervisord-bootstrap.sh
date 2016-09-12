#!/bin/bash

rm /etc/ssh/*key* 2> /dev/null
rm /root/.ssh/id_rsa 2> /dev/null

ssh-keygen -q -N "" -t dsa -f /etc/ssh/ssh_host_dsa_key
ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key
ssh-keygen -q -N "" -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key
ssh-keygen -q -N "" -t ed25519 -f /etc/ssh/ssh_host_ed25519_key
ssh-keygen -q -N "" -t rsa -f /root/.ssh/id_rsa
cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys

rm -f /zookeeper/data/*.pid 2> /dev/null

supervisorctl start sshd
supervisorctl start zookeeper

wait-for-it.sh localhost:2181 -t 120
rc=$?
if [ $rc -ne 0 ]; then
    echo -e "\n---------------------------------------"
    echo -e "    ZooKeeper not ready! Exiting..."
    echo -e "---------------------------------------"
    exit $rc
fi

supervisorctl start exhibitor

ip=`awk 'END{print $1}' /etc/hosts`

echo -e "\n\n--------------------------------------------------------------------------------"
echo -e "You can now access to the Netflix Exhibitor for ZooKeeper url:\n"
echo -e "     http://$ip:8099"
echo -e "\nMantainer:   Matteo Capitanio <matteo.capitanio@gmail.com>"
echo -e "--------------------------------------------------------------------------------\n\n"
