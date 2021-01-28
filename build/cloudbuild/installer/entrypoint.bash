#!/bin/bash

# Copyright 2020 Google LLC
#
# This software is provided as-is, without warranty or representation for any
# use or purpose. Your use of it is subject to your agreement with Google.

set -e
set -o pipefail

export TF_IN_AUTOMATION=1
export TF_INPUT=false

CREDS_FILE="${HOME}/credentials.json"
echo ${GOOGLE_CREDENTIALS} >${CREDS_FILE}
export GOOGLE_APPLICATION_CREDENTIALS="${CREDS_FILE}"

gcloud auth activate-service-account --key-file ${CREDS_FILE} --quiet

if [[ ${TG_ACTION} =~ "apply" ]]; then
  ARGS="-no-color -auto-approve"
elif [[ ${TG_ACTION} =~ "plan" ]]; then
  ARGS="-no-color -lock=false"
else
  ARGS="-no-color"
fi

if printenv TG_DEBUG >/dev/null; then
  terragrunt ${TG_ACTION} ${ARGS}
else
  terragrunt ${TG_ACTION} ${ARGS} 2>&1 | grep -v "\[terragrunt\]"
fi
