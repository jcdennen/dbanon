build:
	go get -u github.com/shuLhan/go-bindata/...
	$$GOPATH/bin/go-bindata -pkg dbanon -o src/bindata.go etc/*
	go get ./...
	go test $$GOPATH/src/github.com/mpchadwick/dbanon/src
	go build -o dbanon main.go