#!/bin/bash
#This is required to build the stuff

TOOL_VERSION="0_4_0"

# For download and temporary stuff
TMPDIR=/build

# Install directory
INSTALLDIR=/usr/local/lib
# Symbolic link location to the binaries
BINDIR=/usr/local/bin

FILE="MALT_unix_${TOOL_VERSION}.sh"


mkdir $TMPDIR
mkdir -p "/opt/java"
cd $TMPDIR

set -euo pipefail

#Add here what kind of dependencies you need in general
#Check for packages here: https://pkgs.alpinelinux.org/packages
apk --update add bash curl wget build-base gcc ca-certificates

#Run the installation here or in the Singularity file itself, no matter which one
wget -P $TMPDIR "http://ab.inf.uni-tuebingen.de/data/software/malt/download/${FILE}"

cp $FILE $INSTALLDIR

chmod +x $INSTALLDIR/$FILE

#ln -s $INSTALLDIR/diamond $BINDIR/diamond

#chmod +x $BINDIR/diamond

#Clean up
rm -rf /var/cache/apk/*

cd /
rm -rf /build
