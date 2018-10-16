FROM centos:7
ENV container docker
RUN curl https://copr.fedorainfracloud.org/coprs/leifmadsen/ovs-master/repo/epel-7/leifmadsen-ovs-master-epel-7.repo \
     > /etc/yum.repos.d/ovsmaster.repo

RUN yum install -y openvswitch-ovn-central openvswitch-ovn-common
RUN mkdir /var/run/openvswitch

COPY start.sh /start.sh

ENTRYPOINT ["/start.sh"]

EXPOSE 6641
EXPOSE 6642