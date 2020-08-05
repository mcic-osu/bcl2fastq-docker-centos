FROM centos:8

LABEL maintainer="Jelmer Poelstra"

WORKDIR /tmp

RUN yum -y update && \
    yum -y install \
      gcc-c++ \
      zlib-devel \
      make \
      wget \
      zip \
      bzip2 \
      tar && \
      #boost=1.54.0 \
      #cmake=2.9.9 && \
 wget ftp://webdata2:webdata2@ussd-ftp.illumina.com/downloads/software/bcl2fastq/bcl2fastq2-v2-20-0-tar.zip && \
 unzip bcl2fastq2-v2-20-0-tar.zip && \
 tar xzvf bcl2fastq2-v2.20.0.422-Source.tar.gz && \
 ./bcl2fastq/src/configure --prefix=/usr/local/ && \
 make && \
 make install && \
 rm -r /tmp/* && \
 yum clean all

WORKDIR /

CMD ["bcl2fastq", "--version"]
