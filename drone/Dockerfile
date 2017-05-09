FROM golang:1.8.1

RUN git clone git://github.com/drone/drone.git $GOPATH/src/github.com/drone/drone && \
    cd $GOPATH/src/github.com/drone/drone && \
    git checkout v0.5.0 && \
    make deps && \
    make gen && \
    make build_static && \
    make build_cross
