#!/bin/bash -e

# TODO: cross-check this list against final CentOS script
# Install packages for Go
echo "================= Install packages for Go ==================="
yum update && yum install -y \
	autotools-dev \
	autoconf \
	bison \
	git \
	mercurial \
	cmake \
	scons \
	binutils \
	gcc \
	bzr

# Install gvm
echo "================= Install gvm ==================="
curl -s -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer | bash

export CGO_ENABLED=0
. /c7golall/go_install.sh
