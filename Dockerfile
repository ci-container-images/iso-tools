FROM centos:7

RUN yum clean all && \
    yum -y install xorriso && \\
    yum clean all
CMD ["/bin/bash"]