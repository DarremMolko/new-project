FROM debian
EXPOSE 5244
WORKDIR /app

RUN apt-get update && \
    apt install -y wget tar && \
    wget https://github.com/alist-org/alist/releases/latest/download/alist-linux-amd64.tar.gz && \
    tar -xzvf alist-linux-amd64.tar.gz && \
    rm -f alist-linux-amd64.tar.gz && \
    chmod +x alist && \
    adduser \
        --disabled-password \
        --gecos "" \
        --home "/nonexistent" \
        --shell "/sbin/nologin" \
        --no-create-home \
        --uid 10001 \
        "choreo" && \
    chown -R 10001:10001 /app

USER 10001

CMD /app/alist server --no-prefix
