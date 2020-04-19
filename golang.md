# Golang

## Commands

1. `go get -u github.com/mgechev/revive`
1. `go fmt ./...&&revive .&&goimports -w .&&golint ./...&&golangci-lint run --enable-all&& go install -ldflags="-s -w" ./...`
1. `env GOOS=linux GOARCH=amd64 go install -ldflags="-s -w" ./...`
1. `upx ~/go/bin/linux_amd64/hraftd`
1. `bssh scp -H ag23,ag24,ag25  ~/go/bin/linux_amd64/hraftd  r:bingoohuang/hraftd`

## Libraries

### Tools

1. [An HTTP/HTTPS intercept proxy GUI](https://github.com/rhaidiz/broxy)
1. [How Thanos Would Program in Go](https://www.bwplotka.dev/2020/how-thanos-would-program-in-go/)
