#!/bin/sh
pth=$(pwd)
go get -v "github.com/xa0082249956/hugo"
cd ~/go/src/github.com/xa0082249956/hugo/
# TODO: add builddate
go build -ldflags "-s -w" -o ~/Github/blog/bin/hugo\
    -o ${pth}/bin/hugo
cd ${pth}
bin/hugo
