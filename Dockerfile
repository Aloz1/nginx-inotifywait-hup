FROM nginx:alpine

RUN apk add --no-cache --virtual .inotify inotify-tools
COPY entry.sh /entry.sh

ENV WATCH_FILES "/etc/letsencrypt/live"

ENTRYPOINT [ "/entry.sh" ]
