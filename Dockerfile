

FROM mysql:5.7

MAINTAINER aaronlee "853126386@qq.com"


RUN  cd /etc/apt \
     
     && echo "deb http://mirrors.163.com/debian/ buster main contrib non-free" >  sources.list \ 		
     && echo "deb http://mirrors.163.com/debian/ buster-updates main contrib non-free" >>  sources.list \	
     && echo "deb http://mirrors.163.com/debian/ buster-backports main contrib non-free" >>  sources.list \	
     && echo "deb http://mirrors.163.com/debian-security buster/updates main contrib non-free" >>  sources.list \	
     && echo "deb http://security.debian.org/debian-security stretch/updates main" >>  sources.list \
     && apt-get update \
     && apt-get -y install  wget \
      vim \
      mydumper;


COPY  percona-xtrabackup-24_2.4.4-1.jessie_amd64.deb  /usr/local/src	 
RUN  apt-get -yf install krb5-locales \
        libcurl3 \
        libdbd-mysql-perl \
        libdbi-perl \
        libev4 \
        libgssapi-krb5-2 \
        libk5crypto3 \
        libkeyutils1 \
        libkrb5-3 \
        libkrb5support0 \
        libnghttp2-14 \
        libpopt0 \
        librtmp1 \
        libssh2-1 \
        libssl1.0.2 \
        rsync \
		
	 &&	 cd /usr/local/src \

	 &&  dpkg -i percona-xtrabackup-24_2.4.4-1.jessie_amd64.deb ;


EXPOSE 3306