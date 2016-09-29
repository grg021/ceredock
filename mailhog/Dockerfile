FROM alpine:3.3

MAINTAINER Greg Hermo <greg.hermo@gmail.com>

RUN set -x \
  && buildDeps='go git bzr' \
  && apk add --update $buildDeps \
  && GOPATH=/tmp/gocode go get github.com/mailhog/MailHog \
  && mv /tmp/gocode/bin/MailHog /usr/local/bin/ \
  && apk del $buildDeps \
  && rm -rf /var/cache/apk/* /tmp/*

CMD ["MailHog"]

EXPOSE 1025 8025