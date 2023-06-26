#!/bin/bash

set -x
du -hs * | sort -h
sam deploy template.yaml --config-env ${ENVIRONMENT} --no-confirm-changeset --force-upload --no-fail-on-empty-changeset --no-progressbar
#sam deploy --template-file template.yaml --config-file samconfig.toml --config-env ${ENVIRONMENT} --no-confirm-changeset --force-upload --no-fail-on-empty-changeset --no-progressbar
#--stack-name todo-list-aws-${ENVIRONMENT}