#!/bin/bash
# Downloads and builds uberjar for the CMR Message Queue Library

echo "Cloning CMR from github.."
git clone https://github.com/nasa/Common-Metadata-Repository.git cmr
# git clone git@github.com:nasa/Common-Metadata-Repository.git cmr
cd cmr/message-queue-lib/

echo "Building uberjar..."
lein uberjar

echo "Moving uberjar and cleaning up..."
cp target/cmr-message-queue-lib-0.1.0-SNAPSHOT-standalone.jar ../../
cd ../../
rm -rf cmr

echo "Aaaaaaaand done."
