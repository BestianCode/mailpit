#!/bin/bash

set -eux -o pipefail
rm -rf templates
mkdir templates
kustomize build | yq --no-doc --split-exp '.metadata.name | sub(".*", "templates/${0}.yaml")'
