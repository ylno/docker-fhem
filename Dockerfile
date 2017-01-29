FROM alpine:3.5
MAINTAINER mfrankl <micha@frankl.info>
ARG VERSION

ENV PERL_MM_USE_DEFAULT=1

RUN \
apk add --update bash perl wget apkbuild-cpan perl-list-moreutils \
&& adduser -S fhem \
&& mkdir /fhem && cd /fhem \
&& wget http://fhem.de/fhem-5.7.tar.gz  \
&& tar xvfz fhem-5.7.tar.gz \
&& find /fhem 
#&& cpan install List::MoreUtils

EXPOSE 8083/tcp

WORKDIR /fhem/fhem-5.7
CMD ["perl", "-I/fhem/fhem-5.7/", "/fhem/fhem-5.7/fhem.pl", "/cfg/fhem.cfg" ]
