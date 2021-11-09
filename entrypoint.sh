#!/bin/sh

set -e

if [ -z "$GSAAS" ]; then
  echo "GSAAS property name not set. Quitting."
  exit 1
fi

echo "Change directory to Source"
cd $SOURCE_DIR

echo "Get the properties"
scene_version=npm pkg get $GSAAS.version
scene_name=npm pkg get $GSAAS.name

echo "return the property"
echo "::set-output name=scene_version::$scene_version"
echo "::set-output name=scene_name::$scene_name"