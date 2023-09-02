#!/bin/bash

chown -R 10014:10014 /opt/alist/

umask 022

exec su-exec 10014:10014 ./alist server --no-prefix
