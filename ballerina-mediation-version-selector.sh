#!/bin/bash

export BALLERINA_HOME="/usr/lib/ballerina"
echo "SET BALLERINA DEFAULT VERSION FOR MEDIATION (2201.5.1) "
ballerina_version="2201.5.1"

export PATH=${BALLERINA_HOME}/${ballerina_version}/bin:$PATH

echo "BALLERINA COMPILING VERSION"
bal -v

echo "$PATH" >> $GITHUB_PATH
