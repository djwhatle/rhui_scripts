#!/bin/sh
source ../hostnames.env
source ./vars

echo "yum install config rpm on CDS_01: ${CDS_O1}"
ssh -t -t -i ${SSH_PRIV_KEY} ${SSH_USER}@${CDS_01} -x "sudo yum -y --nogpgcheck install /home/${SSH_USER}/rh-cds*.rpm"

echo "yum install config rpm on CDS_02: ${CDS_02}"
ssh -t -t -i ${SSH_PRIV_KEY} ${SSH_USER}@${CDS_02} -x "sudo yum -y --nogpgcheck install /home/${SSH_USER}/rh-cds*.rpm"

exit 0

