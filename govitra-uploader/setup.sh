#!usr/bin/env bash

export GOPATH=/go

# Install dependencies
apt-get update && apt-get install -y curl exiftool libav-tools golang

# Set up $GOPATH
mkdir -p $GOPATH/src/github.com/bqqbarbhg

# Download sources
curl -SL https://github.com/bqqbarbhg/go-video-transcoder/archive/v0.0.1.tar.gz \
    | tar -zxC $GOPATH/src/github.com/bqqbarbhg/go-video-transcoder --strip-components=1

# Download dependencies and compile the server
go get github.com/go-video-transcoder

