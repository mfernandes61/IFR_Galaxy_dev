#
# Create a test Galaxy instance with Ipython Notebooks & Bioblend API
# to facilitate utility program development
# Mark Fernandes 15/04/16
#

FROM bgruening/galaxy-stable

MAINTAINER Mark Fernandes mark.fernandes@ifr.ac.uk

USER root
RUN apt-get -qq update && apt-get upgrade -y && apt-get install -y software-properties-common python-pip ipython ipython-notebook lynx

RUN mkdir /scripts
ADD runner.sh /scripts/runner.sh
RUN chmod +x /scripts/runner.sh
EXPOSE :8888
CMD ["/scripts/runner.sh"]


