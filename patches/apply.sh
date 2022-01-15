#!/bin/bash
cd ../../../..
cd packages/apps/FMRadio
git apply -v ../../../device/bq/freezerhd/patches/packages/apps/FMRadio/0001-Suppress-compiler-warnings.patch
cd ../../..
cd vendor/lineage
git apply -v ../../device/bq/freezerhd/patches/vendor/lineage/0001-kernel-Don-t-use-build-image-kernel-modules-instead.patch
cd ../..
