FROM golang:latest

ENV GOOS=$GOOS
RUN go get github.com/nsf/gocode && \
    go get github.com/alecthomas/gometalinter && \
    go get golang.org/x/tools/cmd/goimports && \
    go get golang.org/x/tools/cmd/guru && \
    go get golang.org/x/tools/cmd/gorename && \
    go get github.com/golang/lint/golint && \
    go get github.com/rogpeppe/godef && \
    go get github.com/kisielk/errcheck && \
    go get github.com/jstemmer/gotags && \
    go get github.com/klauspost/asmfmt/cmd/asmfmt && \
    go get github.com/fatih/motion && \
    go get github.com/fatih/gomodifytags && \
    go get github.com/zmb3/gogetdoc && \
    go get github.com/josharian/impl && \
    go get github.com/dominikh/go-tools/cmd/keyify
