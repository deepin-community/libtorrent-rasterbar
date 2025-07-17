#!/bin/sh

git clone https://github.com/arvidn/try_signal.git deps/try_signal
cd deps/try_signal && git -c advice.detachedHead=false checkout 105cce5 && cd ../..

git clone https://github.com/arvidn/libsimulator.git simulation/libsimulator
cd simulation/libsimulator && git -c advice.detachedHead=false checkout aa6e074 && cd ../..

rm -rf .git*
find -name .gitignore -delete
rm -rf deps/try_signal/.git*
rm -rf simulation/libsimulator/.git*
