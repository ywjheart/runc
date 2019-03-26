#! /bin/sh

docker build -t runc_build .
docker run -it  -v `pwd`:/go/src/github.com/opencontainers/runc runc_build make BUILDTAGS='seccomp apparmor selinux'