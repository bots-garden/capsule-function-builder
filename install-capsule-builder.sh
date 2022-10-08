#!/bin/bash
CAPSULE_PATH="$HOME/.local/bin"
cp capsule-builder.sh $CAPSULE_PATH/capsule-builder
cp capsule-builder.sh $CAPSULE_PATH/cabu
echo "💊 capsule-builder installed to ${CAPSULE_PATH}"

echo "Installing ${CAPSULE_MODULE}..."
wget https://github.com/bots-garden/capsule/releases/download/${CAPSULE_VERSION}/${CAPSULE_MODULE}-${CAPSULE_VERSION}-${CAPSULE_OS}-${CAPSULE_ARCH}.tar.gz
tar -zxf ${CAPSULE_MODULE}-${CAPSULE_VERSION}-${CAPSULE_OS}-${CAPSULE_ARCH}.tar.gz --directory ${CAPSULE_PATH}
rm ${CAPSULE_MODULE}-${CAPSULE_VERSION}-${CAPSULE_OS}-${CAPSULE_ARCH}.tar.gz
