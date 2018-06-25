ARG ELASTIC_VERSION=6.3.0
ARG LOGTRAIL_VERSION=0.1.27

FROM docker.elastic.co/kibana/kibana:${ELASTIC_VERSION}

ENV ELASTIC_VERSION=${ELASTIC_VERSION}
ENV LOGTRAIL_VERSION=${LOGTRAIL_VERSION}

RUN set -x \
    && kibana-plugin install https://github.com/sivasamyk/logtrail/releases/download/v${LOGTRAIL_VERSION}/logtrail-${ELASTIC_VERSION}-${LOGTRAIL_VERSION}.zip
