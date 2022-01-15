#!/bin/bash
cd ../../../..
cd vendor/lineage
git apply -v ../../device/bq/freezerhd/patches/vendor/lineage/0001-kernel-Don-t-use-build-image-kernel-modules-instead.patch
cd ../..
