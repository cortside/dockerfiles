FROM mcr.microsoft.com/dotnet/core/sdk:3.1-alpine
RUN apk update && apk add nginx nano supervisor bash
RUN apk add openrc --no-cache

RUN chown -R nginx:www-data /var/lib/nginx

# for nginx
#RUN adduser -D -g 'www' www
#RUN mkdir /www
#RUN chown -R www:www /var/lib/nginx
#RUN chown -R www:www /www

COPY index.html /www/index.html

# log fowarding: https://github.com/jjjordanmsft/ApplicationInsights-logforward
RUN mkdir -p /var/log/supervisord/; mkdir /run/nginx/; mkdir /run/openrc

#ENV TERM=xterm
#ENV ASPNET_ENV=development
ADD startup /usr/local/bin/startup
ADD default /etc/nginx/sites-available/default
COPY supervisord.conf /etc/supervisord.conf

WORKDIR /app
RUN chmod a+x /usr/local/bin/startup

#RUN rc-update add nginx default

VOLUME [ "/sys/fs/cgroup" ]

CMD ["/usr/local/bin/startup"]
