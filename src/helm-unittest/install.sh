#!/usr/bin/env bash
set -e

echo -e "Installing Helm unittest plugin"

if ! type helm > /dev/null 2>&1; then
    echo '(!) Helm is missing!'
    exit 1
fi

helm plugin install https://github.com/helm-unittest/helm-unittest.git

helm plugin ls

echo -e "Done"
