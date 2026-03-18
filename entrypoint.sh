#!/bin/sh
set -e

if [ -z "${INPUT_RACK:-}" ]; then
  echo "::error::Required input 'rack' is missing"
  exit 1
fi
if [ -z "${INPUT_APP:-}" ]; then
  echo "::error::Required input 'app' is missing"
  exit 1
fi

echo "Destroying App $INPUT_APP"
export CONVOX_RACK=$INPUT_RACK
convox apps delete $INPUT_APP --rack $INPUT_RACK --wait
