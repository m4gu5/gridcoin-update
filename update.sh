#!/usr/bin/env sh

# Detailed guide on installing/updating the GridCoin Client: http://wiki.gridcoin.us/Linux_guide

cd ~/Gridcoin-Research
git fetch --all
git reset --hard origin/master
cd src
make -f makefile.unix USE_UPNP=-
strip gridcoinresearchd
sudo install -m 755 gridcoinresearchd /usr/bin/gridcoinresearchd
cd ~/Gridcoin-Research
rm -f build/o.*
qmake "USE_UPNP=-"
make
strip gridcoinresearch
sudo install -m 755 gridcoinresearch /usr/bin/gridcoinresearch
