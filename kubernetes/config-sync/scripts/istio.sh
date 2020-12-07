# Copyright 2020 Google LLC
#
# This software is provided as-is, without warranty or representation for any
# use or purpose. Your use of it is subject to your agreement with Google.

#! /bin/sh

set +ex

# run this script
# then manually chop up the yaml output
# tooling has been used before to automate this, for much larger yaml output
# but I don't think is needed here.

helm template /Users/wbeebe/repos/istio/manifests/charts/istio-operator/ \
  --set hub=docker.io/istio \
  --set tag=1.6.0 \
  --set operatorNamespace=istio-operator \
  --set istioNamespace=istio-system >istio.yaml
