#!/bin/bash

TAG="v0.0.4"

git add .
git commit -m "📦 updates for ${TAG}"

git tag ${TAG}

git push origin main ${TAG}
