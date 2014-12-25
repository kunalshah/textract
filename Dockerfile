FROM ubuntu:latest
MAINTAINER Kunal Shah <https://github.com/kunalshah>

# Set this environment variable to avoid warnings "debconf: unable to initialize frontend: dialog"
ENV DEBIAN_FRONTEND noninteractive

# Update to install pip and other packages for add-apt-repository
RUN apt-get update 
RUN apt-get install -y software-properties-common python-software-properties python-pip

# Add 3rd party PPA for ffmpeg package (ffmpeg is used by textract)
RUN add-apt-repository ppa:jon-severinsson/ffmpeg

# Run update again to get new packages that we described in the new PPA
RUN apt-get update

# Install all dependencies as needed by textract. See http://textract.readthedocs.org/en/latest/installation.html
RUN apt-get -y --force-yes install python-dev libxml2-dev libxslt1-dev antiword poppler-utils pstotext tesseract-ocr \
flac ffmpeg lame libmad0 libsox-fmt-mp3 sox 

# Install zlibg1-dev as described in http://textract.readthedocs.org/en/latest/installation.html 
#  and https://github.com/deanmalmgren/textract/pull/19) for docker
RUN apt-get -y --force-yes install zlib1g-dev

# Install textract using pip
RUN pip install textract

ENTRYPOINT ["textract"]
