FROM alpine as builder
RUN apk --update add fuse alpine-sdk automake autoconf libxml2-dev fuse-dev curl-dev \
  && wget -qO- https://github.com/aliyun/ossfs/archive/master.tar.gz |tar xz \
  && cd ossfs-master \
  && ./autogen.sh \
  && ./configure --prefix=/usr \
  && make \
  && make install \
  && rm -rf /var/cache/apk/* 

FROM alpine
MAINTAINER Kyle Zhike Chen zk.chan007@gmail.com
RUN apk --update add fuse curl libxml2 openssl libstdc++ libgcc && rm -rf /var/cache/apk/* 
COPY --from=builder /usr/bin/ossfs /usr/bin/ossfs

CMD ["/bin/sh"]