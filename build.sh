#!/bin/bash -x
# BASE COMMUNE A TOUS LES PROJETS
# cd $(dirname $0)/..
v=$(git describe --tags --long 2>/dev/null || echo "0.0.0")-${BUILD_NUMBER:-"XX"}

#BUILD
set -e
image=gregoirebailly9/formation_jenkins:$v
docker build -t $image .


versionhtml=$image
set +e
