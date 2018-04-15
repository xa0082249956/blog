#!/bin/bash
pth=$(pwd)
go get -u -v "github.com/xa0082249956/hugo"

if [[ -n "$GOPATH" ]]; then
    cd ${GOPATH}/src/github.com/xa0082249956/hugo/
else
    cd ~/go/src/github.com/xa0082249956/hugo/
fi

# TODO: add builddate
go build -ldflags "-s -w" -o ~/Github/blog/bin/hugo\
    -o ${pth}/bin/hugo
cd ${pth}
bin/hugo
