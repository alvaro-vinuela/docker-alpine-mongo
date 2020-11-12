FROM alpine:3.9

ENV MONGO_TOOLS_VERSION=4.0.5-r0
RUN apk add --no-cache mongodb
RUN apk add --no-cache mongodb-tools=${MONGO_TOOLS_VERSION} && \
    rm -rf /var/cache/apk/*

VOLUME /data/db
EXPOSE 27017 28017

COPY run.sh /root
ENTRYPOINT [ "/root/run.sh" ]
CMD [ "mongod", "--auth", "--bind_ip", "0.0.0.0" ]
