FROM goacme/lego:v5.2.1 AS default

COPY ./resources/manager.sh ./entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

FROM default AS production
