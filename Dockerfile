FROM amazonlinux:2.0.20220606.1

RUN yum -y install deltarpm aws-cli procps make gcc gcc-c++ zlib-devel bzip2-devel procps wget tar perl

WORKDIR /tmp
