#!/bin/bash

set -x
python3.7 -m venv todo-list-aws
source todo-list-aws/bin/activate
python -m pip install --upgrade -r pipelines/PIPELINE-FULL-STAGING/requirements.txt
pwd
