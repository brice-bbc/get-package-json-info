#!/bin/sh

set -e

echo "BASH VERSION: ${BASH_VERSION}"

echo "Change directory to ${GITHUB_WORKSPACE}"
cd $GITHUB_WORKSPACE

echo "Get the properties"
scene_version=`npm pkg get gsaas.version`
echo "GSAAS Scene version: ${scene_version:1:-1}"
scene_name=`npm pkg get gsaas.template_name`
echo "GSAAS Scene name: ${scene_name:1:-1}"

echo "return the property"
echo "::set-output name=scene_version::${scene_version:1:-1}"
echo "::set-output name=scene_name::${scene_name:1:-1}"
