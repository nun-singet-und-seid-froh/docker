#!/bin/bash

apt --no-install-recommends -qq -y install \
ca-certificates \
curl \
unzip \
bzip2

curl -LO https://lilypond.org/download/binaries/linux-64/lilypond-2.22.2-1.linux-64.sh; \
sh lilypond-2.22.2-1.linux-64.sh --batch; \
rm lilypond-2.22.2-1.linux-64.sh

apt -qq purge -y curl unzip ca-certificates && apt -qq autoremove -y --purge && apt -qq clean
