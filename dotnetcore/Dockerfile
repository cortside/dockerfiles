FROM mcr.microsoft.com/dotnet/core/sdk:3.1-alpine
RUN apk update && apk add nginx nano supervisor
# log fowarding: https://github.com/jjjordanmsft/ApplicationInsights-logforward
RUN mkdir -p /var/log/supervisor; mkdir /run/nginx/
ENV TERM=xterm
ENV ASPNET_ENV=development
ADD startup /usr/local/bin/startup
ADD default /etc/nginx/sites-available/default
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
WORKDIR /app
RUN chmod a+x /usr/local/bin/startup
CMD ["/usr/local/bin/startup"]
