#!/bin/sh

set -e

echo "Change directory to Source"
cd $SOURCE_DIR

echo "Get the properties"
scene_version=npm pkg get gsaas.version
scene_name=npm pkg get gsaas.name

echo "return the property"
echo "::set-output name=scene_version::$scene_version"
echo "::set-output name=scene_name::$scene_name"