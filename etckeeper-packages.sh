#!/usr/bin/env bash

set -e

: ${CFGDIR=/etc/etckeeper-packages}
: ${pacman=$(which pacman)}

cd ${CFGDIR}

${pacman} -Qqen > native.list
${pacman} -Qqem > foreign.list
${pacman} -Qqet > explicit.list
