#!/usr/bin/bash
pth=$(pwd)
go get -v "github.com/xa0082249956/hugo"
pushd ~/go/src/github.com/xa0082249956/hugo/
# TODO: add builddate
go build -ldflags "-s -w" -o ~/Github/blog/bin/hugo
    -o ${pth}/bin/hugo
popd
