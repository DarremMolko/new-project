FROM xhofe/alist:latest

WORKDIR /opt/alist

USER 1000

ENV PUID=1000 PGID=1000 UMASK=022

EXPOSE 5244

CMD [ "./alist", "server", "--no-prefix" ]
