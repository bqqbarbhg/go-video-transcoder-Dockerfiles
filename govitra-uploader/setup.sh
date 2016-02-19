#!usr/bin/env bash

export GOPATH=/go

# Install dependencies
apt-get update && apt-get install -y curl git exiftool libav-tools golang

# Set up $GOPATH
mkdir -p $GOPATH/src/github.com/bqqbarbhg/go-video-transcoder

# Download sources
curl -SL https://github.com/bqqbarbhg/go-video-transcoder/archive/v0.0.3.tar.gz \
    | tar -zxC $GOPATH/src/github.com/bqqbarbhg/go-video-transcoder --strip-components=1

# Download dependencies and compile the server
go get github.com/bqqbarbhg/go-video-transcoder

