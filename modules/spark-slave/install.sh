#!/bin/bash
yum update -y
yum install wget gcc gcc-c++ python-devel -y
yum --enablerepo=epel install ansible -y
pip install boto3
cd /tmp
mkdir -p /tmp/datadotz
cd /tmp/datadotz
aws s3 cp s3://datadotz-infracodes/ansible/test/${yml_name} ./
ansible-playbook ${yml_name} -i "localhost," -e "spark_master=${spark_master}" --connection local > playbook.log
