FROM nginx:1.31.1 AS default

COPY ./resources/templates/nginx.conf /etc/nginx/templates/default.conf.template
COPY ./resources/application/ /var/www/application/

FROM default AS production
