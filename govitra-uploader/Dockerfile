FROM learninglayers/base

# Install dependencies
RUN apt-get update && apt-get install -y curl exiftool libav-tools golang

# Set up $GOPATH
RUN mkdir -p go/src/github.com/bqqbarbhg
RUN export GOPATH=/go

# Download sources
RUN curl -SL https://github.com/bqqbarbhg/go-video-transcoder/archive/v0.1.0.tar.gz \
    | tar -zxC $GOPATH/src/github.com/bqqbarbhg/go-video-transcoder --strip-components=1

RUN go install github.com/go-video-transcoder

EXPOSE 8080

CMD ["/go/bin/go-video-transcoder"]

