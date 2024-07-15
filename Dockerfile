FROM alpine:3.20.0

RUN apk --no-cache add tini

# Renovate is configured to parse and update the following line. To keep renovate config simple, make sure only one 
# package is installed in the following line. The --repository part is also required for renovate to work.
# Check the regex in /renovate.json for details.
RUN apk --no-cache add --repository community chromium-swiftshader=124.0.6367.207-r0 && \
  apk add --update --repository=main doas=6.8.2-r7


