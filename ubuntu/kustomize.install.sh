#!/usr/bin/env bash
## INFO: https://kubectl.docs.kubernetes.io/installation/kustomize/binaries/

set -euf -o pipefail

# Download kustomize binary
curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh"  | bash

# Install to /usr/local/bin
sudo install -o root -g root -m 0755 kustomize /usr/local/bin/kustomize

sudo rm -rf ./kustomize
