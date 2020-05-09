FROM alpine:3.11
LABEL maintainer="hrcarsan@gmail.com"

RUN apk update --no-cache && apk add --no-cache wget

COPY etc/crontabs/root /etc/crontabs/root
COPY entry.sh /

RUN chmod +x /entry.sh

CMD /entry.sh
