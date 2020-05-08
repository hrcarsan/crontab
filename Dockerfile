FROM debian:10-slim
MAINTAINER Santiago <hrcarsan@gmail.com>

RUN apt-get update && apt-get install -y --no-install-recommends \
  cron \
  wget \
&& rm -rf /var/lib/apt/lists/*

COPY crontab /etc/cron.d/crontab
COPY entry /

RUN chmod +x /entry

CMD /entry
