FROM busybox
ADD crontab /var/spool/cron/crontabs/www-data
CMD crond -f
