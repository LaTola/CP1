#!/bin/bash

source todo-list-aws/bin/activate
set -x
# echo "Downloading SAM"
# wget -q https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip
# echo "Unzip SAM"
# unzip -q aws-sam-cli-linux-x86_64.zip -d sam-installation
# echo "Install SAM"
# sudo ./sam-installation/install
# echo "SAM Version: $(sam --version)"
# rm -rf ./sam-installation
sam validate --region us-east-1 --lint
sam build
