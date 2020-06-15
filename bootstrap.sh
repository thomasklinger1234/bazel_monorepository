#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

OS_PLATFORM=$(uname)

function main() {
    echo "Installing Bazel for platform <$OS_PLATFORM>"

    case $OS_PLATFORM in
        Darwin)
            brew install bazel
            ;;
        Linux)
            curl https://bazel.build/bazel-release.pub.gpg | apt-key add -
            echo "deb [arch=amd64] https://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list
            apt-get update -y
            apt-get install -y bazel
            ;;
        *)
            echo "invalid platform ${OS_PLATFORM}"
            exit 1
            ;;
    esac
}

main $@
