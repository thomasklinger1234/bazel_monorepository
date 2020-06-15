#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

# Wrapper script for running shfmt

OS_PLATFORM=$(uname)
SHFMT_INDENT_SIZE="2"
SHFMT_FLAGS="-i $SHFMT_INDENT_SIZE -ci -w"

if [[ "$OS_PLATFORM" == "Darwin" ]]; then
  BINARY=$(find . -iwholename "*shfmt_osx/file/downloaded" | head -n1)
elif [[ "$OS_PLATFORM" == "Linux" ]]; then
  BINARY=$(find . -iwholename "*shfmt/file/downloaded" | head -n1)
else
  echo "Unsupported platform $OS_PLATFORM"
  exit 1
fi

${BINARY} $SHFMT_FLAGS $*
