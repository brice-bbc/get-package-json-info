#!/bin/sh

set -e

echo "Change directory to ${GITHUB_WORKSPACE}"
cd $GITHUB_WORKSPACE
ls

echo "Get the properties"
scene_version=`npm pkg get gsaas.version`
scene_name=`npm pkg get gsaas.name`

echo "return the property"
echo "::set-output name=scene_version::${scene_version:1:-1}"
echo "::set-output name=scene_name::${scene_name:1:-1}"
