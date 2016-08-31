#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE}")/.." && pwd -P)"

cd "${script_dir}"

docker build -t karlkfi/govendor .
