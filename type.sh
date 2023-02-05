#!/usr/bin/env bash
cd /opt
wget https://golang.google.cn/dl/go1.19.linux-amd64.tar.gz
tar -xzvf go1.19.linux-amd64.tar.gz
mkdir -p /usr/local/go
cp -rfv /opt/go/* /usr/local/go/
echo "export GOPATH=/opt/go
export GOROOT=/usr/local/go
export GOARCH=386
export GOOS=linux
export GOBIN=$GOROOT/bin/
export GOTOOLS=$GOROOT/pkg/tool/
export PATH=$PATH:$GOBIN:$GOTOOLS" >> /etc/profile
ln -s /usr/local/go/bin/go /usr/bin/go




