FROM centos:7

RUN yum clean all && \
    yum -y install xorriso && \
    yum clean all && \
    mkdir /build-iso && \
    

WORKDIR "/build-iso"

CMD ["/bin/bash"]
