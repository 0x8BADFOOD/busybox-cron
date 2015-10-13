##Create docker file (Dockerfile):

    FROM busybox
    ADD crontab /var/spool/cron/crontabs/www-data
    CMD crond -f

Create cron task in file (crontab):

    * * * * * echo “Current container’s time:”$([Mon Oct 12 21:36:41 2015] +”%Y-%m-%d %H:%M”)

Create an image:

    docker build --tag busybox-cron/myrepo .

Check that you images:

    docker ps -a
    #output:
    POSITORY            TAG                 IMAGE ID            CREATED             VIRTUAL SIZE
    busybox-cron/myrepo   latest              1d1ec072182f        40 minutes ago      1.096 MB

Run container and check logs:

    docker run -d busybox-cron/myrepo
    docker logs -t  -f 58ac0e023af4

See result output:

    2015-10-13T04:01:00.203233152Z Current container’s time:2015-10-13 04:01
    2015-10-13T04:02:00.206203618Z Current container’s time:2015-10-13 04:02
