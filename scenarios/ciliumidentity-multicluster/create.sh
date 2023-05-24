#!/bin/bash

pushd specs

use kind-1000
k create -f identity-1000.yaml
k create -f deployment.yaml
k get ciliumidentity

use kind-2000
k create -f identity-2000.yaml
k create -f deployment.yaml
k get ciliumidentity

popd
