#!/bin/bash

# must be run from fileserver
# set environment var VERSION = nmctl version without leading v  --- 0.13.0 vice v0.13.0
# run from build dir

#get amd64 binary
wget -O nmctl "https://github.com/gravitl/netmaker/releases/download/v$VERSION/nmctl-darwin-amd64"
chmod +x nmctl
tar -zcf nmctl-amd64.tgz nmctl 

#get arm64 binary
wget -O nmctl "https://github.com/gravitl/netmaker/releases/download/v$VERSION/nmctl-darwin-arm64"
chmod +x nmctl
tar -zcf nmctl-arm64.tgz nmctl 

#calc sha
SHA1=$(shasum -a 256 nmctl-amd64.tgz | cut -d " " -f 1)
SHA2=$(shasum -a 256 nmctl-arm64.tgz | cut -d " " -f 1)

#update 
sed -i "3s/.*/\  version \"$VERSION\"/" ../Casks/nmctl.rb
sed -i "6s/.*/\    sha256 \"$SHA1\"/"  ../Casks/nmctl.rb
sed -i "8s/.*/\    sha256 \"$SHA2\"/" ../Casks/nmctl.rb

#copy files to netmaker.org
mkdir -p /var/www/files/v$VERSION/darwin/
cp nmctl-amd64.tgz /var/www/files/v$VERSION/darwin/
cp nmctl-arm64.tgz /var/www/files/v$VERSION/darwin/
