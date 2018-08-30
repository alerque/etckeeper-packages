#!/usr/bin/env bash

set -e

: ${CFGDIR=/etc/etckeeper-packages}
: ${PACMAN=$(which pacman)}

cd ${CFGDIR}

${PACMAN} -Qqen > native.list
${PACMAN} -Qqem > foreign.list
${PACMAN} -Qqet > explicit.list
