#!/bin/bash

for dir in ./*/; do
	dir=${dir%*/}
	cd ${dir##*/}
	pwd
	makepkg -d && cp -f *.zst ../../plan3_repo/x86_64/
	cd ..
done
