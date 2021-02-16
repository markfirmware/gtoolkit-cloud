FROM ubuntu:bionic

RUN    apt-get -qq update \
    && apt-get -qq dist-upgrade \
    && apt-get -qq install unzip wget

COPY newer-libstdc++.so.6 /usr/lib/x86_64-linux-gnu/
RUN     cd usr/lib/x86_64-linux-gnu/ \
     && ln -sf newer-libstdc++.so.6 libstdc++.so.6 
