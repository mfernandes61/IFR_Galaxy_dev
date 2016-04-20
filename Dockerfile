#
# Create a test Galaxy instance with Ipython Notebooks & Bioblend API
# to facilitate utility program development
# Mark Fernandes 15/04/16
#

FROM bgruening/galaxy-stable

MAINTAINER Mark Fernandes mark.fernandes@ifr.ac.uk

USER root
RUN apt-get -qq update && apt-get upgrade -y && apt-get install -y software-properties-common python-pip ipython ipython-notebook lynx

RUN ipython notebook --no-browser --port=8888 --ip=0.0.0.0 &
EXPOSE :8888

CMD ["/usr/bin/startup"]

