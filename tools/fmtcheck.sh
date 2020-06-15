#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

# Check for formatting issues

GIT_REPO_ROOT=$(git rev-parse --show-toplevel)
CI="${CI:-false}"

bazel run //tools:buildifier -- -mode=fix -r $GIT_REPO_ROOT

bazel run //tools:shfmt $(find $GIT_REPO_ROOT -name '*.sh' -type f)

# Prints out an error only if both conditions are satisfied:
# * we are on CI (https://help.github.com/en/actions/configuring-and-managing-workflows/using-environment-variables#default-environment-variables)
# * working tree contains unstaged changes
# When ran locally it silently fixes everything.
if [[ ! -z "$CI" && ! -z $(git status -s) ]]; then
  echo "[!] Source files are not formatted properly"
  echo "[!] Please run ''$0'' to fix it"
  exit 1
else
  echo "[x] Source files are formatted and not running on CI"
fi
