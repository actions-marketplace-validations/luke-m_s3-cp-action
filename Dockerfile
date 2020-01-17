FROM python:3.7-alpine

LABEL "com.github.actions.name"="S3 CopyPaste to specific destination"
LABEL "com.github.actions.description"="Copy Paste a file to an AWS S3 bucket - Fork of tpaschalis/s3-cp-action which is a fork of jakejarvis/s3-sync-action"
LABEL "com.github.actions.icon"="copy"
LABEL "com.github.actions.color"="green"

LABEL version="0.2.0"
LABEL repository="https://github.com/luke-m/s3-cp-action"
LABEL homepage=""
LABEL maintainer="Lukas Müller <lukasm2411@gmail.com>"

# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst
ENV AWSCLI_VERSION='1.16.232'

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
