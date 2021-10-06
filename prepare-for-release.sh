#!/usr/bin/env bash

set -ex

docker run -it -v $(pwd):/opt/app -w /opt/app node:12 bash -c 'npm install && npm run build && npm prune --production && npm install -g @vercel/ncc && ncc build lib/main.js --license licenses.txt'