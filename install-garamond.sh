#!/bin/sh

apt --no-install-recommends -qq -y install \
ca-certificates \
curl \
unzip

curl -LO https://bitbucket.org/georgd/eb-garamond/downloads/EBGaramond-0.016.zip; \
unzip EBGaramond-0.016.zip; \
mkdir -p $HOME/.fonts; \
cp EBGaramond-0.016/otf/*.otf $HOME/.fonts/; \
rm -r EBGaramond-0.016.zip EBGaramond-0.016

apt -qq purge -y curl unzip ca-certificates && apt -qq autoremove -y --purge && apt -qq clean
