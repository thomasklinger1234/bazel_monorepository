#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

# Wrapper script for running buildifier

OS_PLATFORM=$(uname)

if [[ "$OS_PLATFORM" == "Darwin" ]]; then
  BINARY=$(find . -iwholename "*buildifier_osx/file/downloaded" | head -n1)
elif [[ "$OS_PLATFORM" == "Linux" ]]; then
  BINARY=$(find . -iwholename "*buildifier/file/downloaded" | head -n1)
else
  echo "Unsupported platform $OS_PLATFORM"
  exit 1
fi

${BINARY} $*