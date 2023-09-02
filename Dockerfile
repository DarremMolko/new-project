FROM xhofe/alist:latest

WORKDIR /opt/alist

RUN adduser \
    --disabled-password \
    --gecos "" \
    --home "/nonexistent" \
    --shell "/sbin/nologin" \
    --no-create-home \
    --uid 10014 \
    "choreo"

USER 10014

ENV PUID=10014 PGID=10014 UMASK=022

EXPOSE 5244

CMD ./alist server --no-prefix
