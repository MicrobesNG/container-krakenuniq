FROM public.ecr.aws/amazonlinux/amazonlinux:2023

WORKDIR /root
RUN dnf -y install aws-cli procps make gcc gcc-c++ zlib-devel bzip2-devel procps wget tar perl
RUN wget https://github.com/fbreitwieser/krakenuniq/archive/refs/tags/v1.0.4.tar.gz
RUN tar xzvf v1.0.4.tar.gz
RUN ./krakenuniq-1.0.4/install_krakenuniq.sh /usr/local/bin/
WORKDIR /tmp
