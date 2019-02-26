FROM ubuntu:18.04

WORKDIR /2048

# Build from github
#RUN apt-get update \
# && apt-get install -y wget build-essential \
# && wget https://raw.githubusercontent.com/mevdschee/2048.c/master/2048.c \
# && apt-get clean \
# && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/ \
# && gcc -o 2048 2048.c

# Build from local file
RUN apt-get update \
 && apt-get install -y wget build-essential \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/

COPY . /2048

RUN gcc -o 2048 2048.c

CMD /2048/2048
