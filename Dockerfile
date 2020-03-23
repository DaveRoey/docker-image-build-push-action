FROM docker:19.03.2 as runtime
LABEL "repository"="https://github.com/risfeng/aliyun-docker-image-build-push-action.git"
LABEL "maintainer"="Risfeng"

RUN apk update \
    && apk upgrade \
    && apk add --no-cache git

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

FROM runtime