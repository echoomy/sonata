FROM teddysun/xray:26.5.9 AS default

COPY ./resources/proxy.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

RUN apk add envsubst

COPY ./resources/templates/router.json /etc/xray/config.template.json

ENTRYPOINT ["/entrypoint.sh"]

FROM default AS production
