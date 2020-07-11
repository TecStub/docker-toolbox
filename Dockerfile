FROM alpine:3.9
RUN apk -v --update add \
        python \
        py-pip \
        groff \
        less \
        mailcap \
        mongodb-tools \
        && \
    pip install --upgrade --no-cache-dir awscli==1.18.93 s3cmd==2.0.1 python-magic && \
    rm /var/cache/apk/*
ENTRYPOINT ["aws"]
