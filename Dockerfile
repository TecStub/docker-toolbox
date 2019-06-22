FROM alpine:3.9
RUN apk -v --update add \
        python \
        py-pip \
        groff \
        less \
        mailcap \
        mongodb \
        && \
    pip install --upgrade awscli==1.14.5 s3cmd==2.0.1 python-magic && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*
ENTRYPOINT ["aws"]
