#!/bin/bash

cp /opt/PrincetonInstruments/picam/runtime/*.so* .
cp /opt/pleora/ebus_sdk/x86_64/lib/*.so* .
cp /opt/pleora/ebus_sdk/x86_64/lib/genicam/bin/Linux64_x64/*.so* .

ln -s libpiac.so.* libpiac.so
ln -s libpicam.so.* libpicam.so
ln -s libpicc.so.* libpicc.so
ln -s libpida.so.* libpida.so
ln -s libpidi.so.* libpidi.so
