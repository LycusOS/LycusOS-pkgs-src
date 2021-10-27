#!/bin/bash
rm LycusOS-pkgs-repo/x86_64/*
for i in $(ls -l | grep "^d" | awk '{print $9}'); do
    cd "${i}"
    makepkg -fs
    mv *.pkg.tar.zst ../LycusOS-pkgs-repo
    rm -rf pkg
    cd ..
done
repo-add LycusOS-pkgs-repo/x86_64/LycusOS-pkgs-repo.db.tar.gz LycusOS-pkgs-repo/x86_64/*.pkg.tar.zst
