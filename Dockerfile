FROM alpine:3.20.1

RUN apk --no-cache add tini

# Renovate is configured to parse and update the following line. To keep renovate config simple, make sure only one 
# package is installed in the following line. The #repo= part is also required for renovate to work.
# Check the regex in /renovate.json for details.
RUN apk --no-cache add chromium-swiftshader=124.0.6367.207-r0 #repo=community


