FROM anigeo/awscli

RUN apk add --update bash && rm -rf /var/cache/apk/*

RUN mkdir -p /app
RUN mkdir -p /data
ADD run /app/run
RUN chmod +x /app/run

ENTRYPOINT ["/app/run"]

