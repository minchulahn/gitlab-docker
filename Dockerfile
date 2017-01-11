FROM ubuntu:14.04
MAINTAINER Minchul Ahn <minchulahn@inslab.co.kr>

# Install required packages
RUN apt-get update -q \
    && DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
      curl \
      ca-certificates \
      openssh-server \
      wget \
      apt-transport-https \
      vim \
      nano

# Download & Install GitLab
RUN curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
RUN sudo apt-get install gitlab-ce

ADD start.sh /opt/gitlab/start.sh
RUN chmod 777 /opt/gitlab/start.sh

# Define data volumes
VOLUME ["/etc/gitlab", "/var/opt/gitlab", "/var/log/gitlab"]

# Expose web & ssh
EXPOSE 80

CMD gitlab-ctl reconfigure
