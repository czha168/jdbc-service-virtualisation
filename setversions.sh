#!/usr/bin/env bash

env | grep "TRAVIS_"

# set -v > /dev/null

echo "TRAVIS_TAG: $TRAVIS_TAG"

if [[ "$TRAVIS_TAG" =~ ^[0-9]+\.[0-9]+\.[0-9]+\.RELEASE$ ]]; then
  mvn versions:set -DnewVersion=$TRAVIS_TAG
  echo -n "setting version $TRAVIS_TAG"
fi
