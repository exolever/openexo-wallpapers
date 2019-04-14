FROM ubuntu:16.04

WORKDIR /openexo-wallpapers

COPY . .

RUN bash generate.sh

RUN dpkg-deb --build ../openexo-wallpapers