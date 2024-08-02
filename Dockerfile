FROM alpine:3.20.0

RUN apk --no-cache add tini

# Renovate is configured to parse and update the following line. To keep renovate config simple, make sure only one 
# package is installed in the following line. The --repository part is also required for renovate to work.
# Check the regex in /renovate.json for details.
RUN apk --no-cache add --repository community chromium-swiftshader=127.0.6533.88-r0 && \
  apk add --update --repository=main doas=1.36.0


