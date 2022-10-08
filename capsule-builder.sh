#!/bin/bash

if [ -z "$IMAGE_NAME" ]
then
  IMAGE_NAME="k33g/capsule-builder:0.0.0"
fi
# you can override the image
# ex: IMAGE_NAME="capsule-builder" capsule templates

CAPSULE_CMD=$1
MESSAGE="😡 unknown command!"
echo "🐳 using ${IMAGE_NAME}"

if [[ "$1" == "build" ]]; then
# cd serve-simple-html
# capsule-builder build . index.go index.wasm
# capsule-builder build . hello-bob.go hello-bob.wasm
  PROJECT_DIRECTORY=$2
  SOURCE_FILE=$3
  WASM_FILE=$4

  echo "📦 building function ${SOURCE_FILE} to ${PROJECT_DIRECTORY}/${WASM_FILE}"

  docker run --rm \
    -v $(pwd)/${PROJECT_DIRECTORY}:/home/function ${IMAGE_NAME} \
    /bin/bash -c "go get -u ./...; go mod tidy; tinygo build -o ${WASM_FILE} -target wasi ${SOURCE_FILE}; ls -lh *.wasm"
  
  MESSAGE="✅🙂 function built"

fi

if [[ "$1" == "generate" ]]; then
# capsule-builder generate cli hello-bob
# capsule-builder generate service-get hello-bob

  FUNCTION_NAME=$3
  TEMPLATE_NAME=$2
  docker run --user "$(id -u)" --rm \
    -v $(pwd):/home/function ${IMAGE_NAME} \
    /bin/bash -c "capsule-${TEMPLATE_NAME} ${FUNCTION_NAME}"

  MESSAGE="✅🙂 ${FUNCTION_NAME} function generated"
fi

if [[ "$1" == "templates" ]]; then
  docker run --rm ${IMAGE_NAME} \
    /bin/bash -c "capsule-get-templates"
  MESSAGE=""
fi

if [[ "$1" == "help" ]]; then
  docker run --rm ${IMAGE_NAME} \
    /bin/bash -c "capsule-help"
  MESSAGE=""
fi


echo "${MESSAGE}"

