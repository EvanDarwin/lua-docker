FROM alpine:latest
ENV AUTHOR="Evan Darwin <github@relta.net>"

ENV VERSION_LUA="5.3.5"
ENV VERSION_LUAROCKS="3.3.1"

RUN apk add --no-cache libc-dev readline readline-dev unzip make gcc coreutils wget && \
     cd /tmp/ && \
     wget -O lua.tar.gz https://www.lua.org/ftp/lua-${VERSION_LUA}.tar.gz && \
     tar -zxvf lua.tar.gz && \
     cd lua-${VERSION_LUA} && \
     make linux install && \
     cd /tmp/ && \
     wget -O luarocks.tar.gz https://luarocks.org/releases/luarocks-${VERSION_LUAROCKS}.tar.gz && \
     tar zxpf luarocks.tar.gz && cd \
     luarocks-${VERSION_LUAROCKS} && \
     ./configure && make build && make install && \
     rm -rf /tmp/lua*
