FROM armv7/armhf-ubuntu:14.04

COPY setup.sh /setup.sh
RUN /bin/bash /setup.sh

EXPOSE 8080

CMD ["/go/bin/go-video-transcoder"]

