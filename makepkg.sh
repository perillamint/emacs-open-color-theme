#!/usr/bin/env bash

version=$1

if [ "$version" = "" ]; then
    version=$(date -u '+%Y%m%d')
fi
echo "version = $version"

dir="open-color-theme-${version}"

mkdir $dir

cp *.el $dir
sed -i "s/%%version%%/$version/" "$dir/open-color-theme-pkg.el"

tar cf open-color-theme-${version}.tar $dir
