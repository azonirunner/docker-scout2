#!/bin/bash

docker run --rm -it \
  -e AWS_REGION=${AWS_REGION} \
  -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
  -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
  -e AWS_SESSION_TOKEN=${AWS_SESSION_TOKEN} \
  -e USER=${USER} \
  -v ${HOME}/.aws:/root/.aws:ro \
  -v ${HOME}/.netrc:/root/.netrc:ro \
  -v ${HOME}/Scout2/reports:/Scout2/scout2-report:rw  \
  demo2_scout2 ;

open ${HOME}/Scout2/reports/report.html
