FROM ghcr.io/lu4p/cgo-cross:master

RUN apk add tor upx wget
RUN mkdir -p /go/pkg/mod/github.com/cretz/tor-static

#get linux libs
RUN cd /go/pkg/mod/github.com/cretz/tor-static  && wget https://github.com/lu4p/tor-static/releases/download/linux/libs_linux.tar.gz

#get windows libs
RUN cd /go/pkg/mod/github.com/cretz/tor-static  && wget https://github.com/lu4p/tor-static/releases/download/2/tor-static-windows-amd64.zip