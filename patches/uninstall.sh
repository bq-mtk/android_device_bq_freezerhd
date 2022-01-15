#!/bin/sh
cd ../../../..
cd vendor/lineage
git checkout -- . && git clean -df
cd ../..
