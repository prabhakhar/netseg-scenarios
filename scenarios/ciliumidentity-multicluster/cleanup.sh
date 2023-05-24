#!/bin/bash

pushd specs

use kind-1000
k delete -f deployment.yaml
k delete -f cnp.yaml
k delete -f identity-1000.yaml

use kind-2000
k delete -f deployment.yaml
k delete -f cnp.yaml
k delete -f identity-2000.yaml

popd
