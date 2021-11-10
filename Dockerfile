FROM python:3.9-alpine3.14

ENV AWSCLI_VERSION='1.20.51'
RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

RUN apk add --update nodejs npm build-base make
RUN npm install -g npm@8.1.2

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
