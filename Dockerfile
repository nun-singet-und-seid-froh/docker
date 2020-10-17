FROM ubuntu
RUN apt -qq update && apt -qq -y dist-upgrade && apt --no-install-recommends -qq -y install ca-certificates curl unzip
RUN curl -LO https://lilypond.org/download/binaries/linux-64/lilypond-2.20.0-1.linux-64.sh; \
sh lilypond-2.20.0-1.linux-64.sh --batch; \
rm lilypond-2.20.0-1.linux-64.sh
RUN curl -LO https://bitbucket.org/georgd/eb-garamond/downloads/EBGaramond-0.016.zip; \
unzip EBGaramond-0.016.zip; \
mkdir -p $HOME/.fonts; \
cp EBGaramond-0.016/otf/*.otf $HOME/.fonts/; \
rm -r EBGaramond-0.016.zip EBGaramond-0.016
RUN apt -qq purge -y curl unzip && apt -qq autoremove -y --purge && apt -qq clean
