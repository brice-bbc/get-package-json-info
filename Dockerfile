FROM python:3.6-alpine

ENV AWSCLI_VERSION='1.20.51'
RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

RUN apk add --update nodejs build-base make
RUN apk add 'npm>8.1.0'

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
