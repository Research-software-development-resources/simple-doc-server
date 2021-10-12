FROM nginx

USER root

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./.htpasswd /etc/nginx/.htpasswd

RUN mkdir /template
ADD ./template /template

RUN chmod -R 775 /usr/share/nginx/html
RUN chmod 775 /etc/nginx/nginx.conf
RUN chmod 775 /etc/nginx/.htpasswd

COPY ./entrypoint.sh /entrypoint.sh
CMD /bin/bash /entrypoint.sh
