FROM       debian:jessie
MAINTAINER sMug (replicatorbe) aka Jérôme Fafchamps <smug@smug.fr>

RUN apt-get update
RUN apt-get install -y ruby1.9.1
RUN gem install flash_policy_server --no-rdoc --no-ri

ADD crossdomain.xml /root/

ENTRYPOINT cd /root/ && flash_policy_server

EXPOSE 843:843