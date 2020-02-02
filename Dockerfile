# Using MiniDeb Stretch image because Debian Buster doesn't have pstotext package as of 2/2/2020
FROM bitnami/minideb:stretch
# FROM debian:buster

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -y -qq python-dev libxml2-dev libxslt1-dev antiword \
                              unrtf poppler-utils pstotext tesseract-ocr flac \
                              ffmpeg lame libmad0 libsox-fmt-mp3 sox libjpeg-dev swig \
                              python3-pip \
    && apt-get clean

# Install textract using pip3
RUN pip3 install --no-cache-dir textract

WORKDIR /data

ENTRYPOINT ["textract"]
