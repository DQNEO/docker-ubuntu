# Docker images to support low level programing

These are docker images that I use for my compiler development or low level programing.

The images are hosted here.

https://hub.docker.com/r/dqneo

# Images

## `dqneo/ubuntu-go`

`go` installed on ubuntu

### Usage

Run a go command :

```
$ docker run --rm -it dqneo/ubuntu-go go version
go version go1.20.5 linux/amd64
```

Run a hello world by go :

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

## `dqneo/ubuntu-compiler`

Basic compiler dev tools installed on ubuntu`

### Usage

Run a container with special powers :

```
$ docker run -it --rm -v `pwd`:/mnt -w /mnt \
    --cap-add=SYS_PTRACE\
    --security-opt='seccomp=unconfined'\
    --tmpfs=/tmp/tmpfs:rw,size=500m,mode=1777\
     dqneo/ubuntu-compiler-go bash

# In the container, you can use `gdb` , `strace` etc
```

## `dqneo/ubuntu-compiler-go`

Basic compiler tools and `go` on ubuntu`

### Usage

Both exqamples in `dqneo/ubuntu-go` and `dqneo/ubuntu-compiler` are usable.


