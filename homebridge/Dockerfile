FROM %%BASE_IMAGE%%

ENV LANG C.UTF-8

RUN apk add --no-cache jq python nodejs git make g++ avahi-compat-libdns_sd avahi-dev avahi-tools avahi-ui-tools
RUN npm install -g --unsafe-perm homebridge homebridge-homeassistant

COPY homebridge-base-config.json /etc/
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]