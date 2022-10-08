#!/bin/bash
IMAGE_NAME="capsule-builder:latest"
CAPSULE_CMD=$1
MESSAGE="😡 unknown command!"
echo "🐳 using ${IMAGE_NAME}"

if [[ "$1" == "build" ]]; then
# cd serve-simple-html
# capsule-builder build . index.go index.wasm
  PROJECT_DIRECTORY=$2
  SOURCE_FILE=$3
  WASM_FILE=$4

  echo "📦 building function ${SOURCE_FILE} to ${PROJECT_DIRECTORY}/${WASM_FILE}"

  docker run --rm \
    -v $(pwd)/${PROJECT_DIRECTORY}:/home/function ${IMAGE_NAME} \
    /bin/bash -c "go mod tidy; tinygo build -o ${WASM_FILE} -target wasi ${SOURCE_FILE}; ls -lh *.wasm"
  
  MESSAGE="✅🙂 function built"

fi

if [[ "$1" == "generate" ]]; then
  echo ""
fi

if [[ "$1" == "templates" ]]; then
  echo ""
fi

echo "${MESSAGE}"




# ./capsule-builder.sh ./cli-mode-hello/ hello.go hello.wasm





