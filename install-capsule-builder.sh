#!/bin/bash
CAPSULE_BUILDER_VERSION="v0.0.1"

if [ -z "$CAPSULE_BUILDER_PATH" ]
then
    CAPSULE_BUILDER_PATH="$HOME/.local/bin"
fi

echo "Installing Capsule Builder..."
wget https://github.com/bots-garden/capsule-function-builder/releases/download/${CAPSULE_BUILDER_VERSION}/capsule-builder
chmod +x capsule-builder
cp capsule-builder $CAPSULE_BUILDER_PATH/capsule-builder
cp capsule-builder $CAPSULE_BUILDER_PATH/cabu
echo "💊 capsule-builder installed to ${CAPSULE_BUILDER_PATH}"
rm capsule-builder
