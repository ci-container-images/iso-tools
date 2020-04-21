FROM centos:7

RUN yum clean all && \
    yum -y install xorriso && \
    yum clean all && \
    mkdir /build-iso && \
    curl -o /usr/local/bin/yq -L -v https://github.com/mikefarah/yq/releases/download/3.3.0/yq_linux_amd64 && \
    chmod +x /usr/local/bin/yq

WORKDIR "/build-iso"

CMD ["/bin/bash"]
