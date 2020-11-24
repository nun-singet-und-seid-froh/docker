#!/bin/sh
apt -qq update && \
apt -qq -y dist-upgrade && \
DEBIAN_FRONTEND="noninteractive" TZ="UTC" apt --no-install-recommends -qq -y install \
texlive-fonts-recommended \
texlive-plain-generic \
texlive-xetex \
ghostscript \
python3
