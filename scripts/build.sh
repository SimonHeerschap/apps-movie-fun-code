#!/bin/sh

set -e -x

if [ "$#" -ne 1 ]; then
    echo "Please provide location to place build output."
    exit 1;
fi

./mvnw package
cp target/moviefun-0.0.1-SNAPSHOT.war $1
