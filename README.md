# Docker images to support low level programing

These are docker images that I use for my compiler development or low level programing.

The images are hosted here.

https://hub.docker.com/r/dqneo

# Images

## `dqneo/ubuntu-go`

`go` installed on ubuntu

## `dqneo/ubuntu-compiler`

Basic compiler tools on ubuntu`

## `dqneo/ubuntu-compiler-go`

Basic compiler tools and `go` on ubuntu`

# Usage

```
$ docker run --rm -it dqneo/ubuntu-go go version
go version go1.20.5 linux/amd64
```

```
$ cat > main.go <<EOF                                                                                
package main
import "fmt"
func main() {fmt.Println("hello world")}
EOF
$ go mod init x
$ docker run --rm -v `pwd`:/mnt/ -w /mnt dqneo/ubuntu-go go run .
hello world
```
