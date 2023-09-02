FROM xhofe/alist:latest

WORKDIR /opt/alist

ENV PUID=10001 PGID=10001 UMASK=022

EXPOSE 5244

CMD [ "./alist", "server", "--no-prefix" ]
