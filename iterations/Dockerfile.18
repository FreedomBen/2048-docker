FROM registry.access.redhat.com/ubi8/ubi

RUN mkdir -p /2048-directory \
 && dnf update \
 && dnf install -y wget gcc \
 && dnf clean all 

RUN groupadd --gid 1000 twentyfortyeight \
 && adduser --uid 1000 --gid 1000 --home /home/twentyfortyeight twentyfortyeight \
 && usermod -L twentyfortyeight \
 && chown twentyfortyeight: /2048-directory

USER twentyfortyeight

WORKDIR /2048-directory

COPY --chown=twentyfortyeight:twentyfortyeight 2048.c /2048-directory/

RUN gcc -o 2048 2048.c

CMD /2048-directory/2048
