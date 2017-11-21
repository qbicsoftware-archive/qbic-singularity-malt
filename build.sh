#!/bin/bash
#This is required to build the stuff

TOOL_VERSION="v0.9.13"

# For download and temporary stuff
TMPDIR=/build

# Install directory
INSTALLDIR=/usr/local/lib
# Symbolic link location to the binaries
BINDIR=/usr/local/bin

mkdir $TMPDIR
cd $TMPDIR

set -euo pipefail

#Add here what kind of dependencies you need in general
#Check for packages here: https://pkgs.alpinelinux.org/packages
apk --update add bash wget gzip build-base gcc git ca-certificates

#Run the installation here or in the Singularity file itself, no matter which one
wget -P $TMPDIR "https://github.com/bbuchfink/diamond/releases/download/${TOOL_VERSION}/diamond-linux64.tar.gz"
tar -xzf diamond-linux64.tar.gz --directory $INSTALLDIR

ln -s $INSTALLDIR/diamond $BINDIR/diamond

chmod +x $BINDIR/diamond

#Clean up
rm -rf /var/cache/apk/*

cd /
rm -rf /build
