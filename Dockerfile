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

EXPOSE 5244

CMD [ "/entrypoint.sh" ]
