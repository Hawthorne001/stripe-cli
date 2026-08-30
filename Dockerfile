FROM alpine:3.23.2
RUN apk update && apk upgrade && \
  apk add --no-cache ca-certificates
COPY stripe /bin/stripe
ENTRYPOINT ["/bin/stripe"]
