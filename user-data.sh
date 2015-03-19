#!/bin/bash
# This script updates the instance, installs Apache and pulls down an HTML file from GITHUB
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install apache2 git -y
cd /root
git clone https://github.com/gcranshaw/aws-cloudformation-test
cp -f aws-cloudformation-test/index.html /var/www/html/.
exit