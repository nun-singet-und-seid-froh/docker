#!/bin/bash

apt --no-install-recommends -qq -y install \
ca-certificates \
curl \
unzip \
bzip2

curl -LO https://gitlab.com/lilypond/lilypond/-/releases/v2.24.1/downloads/lilypond-2.24.1-linux-x86_64.tar.gz; \
tar -xf lilypond-2.24.1-linux-x86_64.tar.gz --strip-components=1 -C /usr/local; \
rm lilypond-2.24.1-linux-x86_64.tar.gz

apt -qq purge -y curl unzip ca-certificates && apt -qq autoremove -y --purge && apt -qq clean
