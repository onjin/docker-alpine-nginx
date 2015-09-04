FROM alpine:latest

MAINTAINER Marek Wywiał "onjinx@gmail.com"

RUN apk --update add nginx ca-certificates

RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

VOLUME ["/var/cache/nginx"]

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
