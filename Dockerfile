FROM python

MAINTAINER Matt RK2 <matt@rk2tech.com>

RUN apt-get update && \
    pip install awscli && \
    git clone https://github.com/nccgroup/Scout2 /Scout2 && \
    pip install -r /Scout2/requirements.txt && \
    cd /Scout2 && \
    python setup.py install

RUN groupadd -r scout2 && useradd  -ms /bin/bash -r -g scout2 scout2 && \
    chown -R scout2:scout2 /Scout2

COPY scout2-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Runs application as scout2 and not root
USER scout2
WORKDIR /Scout2

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
