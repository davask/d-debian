FROM debian:8.8
MAINTAINER davask <docker@davaskweblimited.com>
USER root
LABEL dwl.server.os="debian 8.8"

ENV DEBIAN_FRONTEND="noninteractive" DWL_LOCAL_LANG="en_US:en" DWL_LOCAL="en_US.UTF-8" LANG="en_US.UTF-8" LANGUAGE="en_US:en" LC_ALL="en_US.UTF-8" DWL_USER_ID="1000" DWL_USER_NAME="username" DWL_USER_PASSWD="secret" ENV DWL_SSH_ACCESS="false"

# update locales
RUN cat /etc/locale.gen && sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && locale-gen
# Update packages
RUN apt-get update && \
apt-get install -y locales
RUN locale-gen en_US.UTF-8 && dpkg-reconfigure locales
# Update packages
RUN apt-get update && \
apt-get install -y apt-utils
RUN apt-get update && \
apt-get install -y \
locales \
openssl \
ca-certificates \
apt-transport-https \
software-properties-common \
openssh-server \
nano \
wget \
sudo

RUN apt-get autoremove -y; \
rm -rf /var/lib/apt/lists/*


RUN useradd -r \
--comment "dwl ssh user" \
--no-create-home \
--shell /bin/bash \
--uid 999 \
--no-user-group \
admin;
RUN echo "admin ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/admin
RUN chmod 0440 /etc/sudoers.d/admin

#configuration static
COPY ./build/etc/ssh/sshd_config \
./build/etc/ssh/sshd_config.factory-defaults \
/etc/ssh/

COPY ./build/dwl/envvar.sh \
./build/dwl/user.sh \
./build/dwl/ssh.sh \
./build/dwl/permission.sh \
./build/dwl/keeprunning.sh \
./build/dwl/init.sh \
/dwl/

EXPOSE 6408

ENTRYPOINT ["/bin/bash"]
CMD ["/dwl/init.sh"]
RUN chown root:sudo -R /dwl
USER admin
WORKDIR /home/admin
