#!/bin/bash

set -ex

apt-get update && apt-get install -y curl

if [ -z $MOVIE_FUN_URL ]; then
  echo "MOVIE_FUN_URL not set"
  exit 1
fi

pushd attendee-service-source
  echo "Running smoke tests for Movie Fun  deployed at $MOVIE_FUN_URL"
  smoke-tests/bin/test $MOVIE_FUN_URL
popd

exit 0

