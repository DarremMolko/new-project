FROM xhofe/alist:latest

WORKDIR /opt/alist

USER 10014

ENV PUID=10014 PGID=10014 UMASK=022

EXPOSE 8080

CMD [ "./alist", "server", "--no-prefix" ]
