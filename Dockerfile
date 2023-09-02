FROM debian
EXPOSE 5244
WORKDIR /app

RUN apt-get update && \
    apt install -y wget tar && \
    wget https://github.com/alist-org/alist/releases/latest/download/alist-linux-amd64.tar.gz && \
    tar -xzvf alist-linux-amd64.tar.gz && \
    rm -f alist-linux-amd64.tar.gz && \
    chmod +x alist && \
    useradd -r -u 10014 appuser && \
    chown -R appuser: /app

USER appuser

CMD /app/alist server --no-prefix
