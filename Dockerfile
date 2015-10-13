FROM busybox
MAINTAINER Mobile Developer <app.mobile.developer@gmail.com>
ADD crontab /var/spool/cron/crontabs/www-data
CMD crond -f
