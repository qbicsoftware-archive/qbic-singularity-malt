#!/bin/bash
#This is required to build the stuff

TOOL_VERSION="0_4_0"

# For download and temporary stuff
TMPDIR=/build

FILE="MALT_unix_${TOOL_VERSION}.sh"

mkdir $TMPDIR

cd $TMPDIR

# Add here what kind of dependencies you need in general
apt update && apt upgrade -y
apt install -y wget gcc ca-certificates openjdk-8-jre

# Run the installation here or in the Singularity file itself, no matter which one
wget -P $TMPDIR "http://ab.inf.uni-tuebingen.de/data/software/malt/download/${FILE}"

chmod +x $FILE
# Run quiet installation
./$FILE -q

#Clean up
apt clean

cd /
rm -rf $TMPDIR
