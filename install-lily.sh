#!/bin/bash

apt --no-install-recommends -qq -y install lilypond
apt -qq autoremove -y --purge && apt -qq clean
