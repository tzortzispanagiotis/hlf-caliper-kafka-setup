#!/bin/bash

echo "Adding binaries for fabric 1.4.4..."
curl -sSL http://bit.ly/2ysbOFE -o bootstrap.sh
chmod +x ./bootstrap.sh

./bootstrap.sh 1.4.4 1.4.4 -sd

rm -f ./bootstrap.sh

echo "Successful."
