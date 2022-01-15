#!/bin/sh
cd ../../../..
cd packages/apps/FMRadio
git checkout -- . && git clean -df
cd ../../..
cd vendor/lineage
git checkout -- . && git clean -df
cd ../..
