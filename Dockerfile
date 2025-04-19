FROM alpine:latest

# Build arguments
ARG BUILD_DATE
ARG VCS_REF
ARG LUA_VERSION

# Set metadata labels
LABEL org.opencontainers.image.created="${BUILD_DATE}" \
     org.opencontainers.image.revision="${VCS_REF}" \
     org.opencontainers.image.version="${LUA_VERSION}" \
     org.opencontainers.image.authors="Evan Darwin <github@relta.net>" \
     org.opencontainers.image.url="https://github.com/evandarwin/lua-docker" \
     org.opencontainers.image.documentation="https://github.com/evandarwin/lua-docker/blob/master/README.md" \
     org.opencontainers.image.description="Lua with LuaRocks container image"

ENV AUTHOR="Evan Darwin <github@relta.net>"

# Lua and LuaRocks versions (can be overridden at build time)
ENV VERSION_LUA="${LUA_VERSION:-5.4.7}"
ENV VERSION_LUAROCKS="${LUAROCKS_VERSION:-3.11.1}"

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
