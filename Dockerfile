FROM centos:7

RUN yum install -y python-setuptools
RUN easy_install pip
RUN pip install shadowsocks
RUN yum install -y gcc make gcc-c++ autoconfig cmake
RUN yum install -y python-devel
RUN pip install gevent
RUN yum install -y swig
RUN yum install -y openssl098e
RUN yum install -y m2crypto
COPY ss.json .
EXPOSE 8388
CMD ["ssserver","-c","/ss.json"]
