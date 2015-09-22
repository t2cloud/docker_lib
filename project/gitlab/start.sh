#!/usr/bin/env bash

docker run --name=gitlab-postgresql -d \
        --env='DB_NAME=gitlabhq_production' \
            --env='DB_USER=gitlab' --env='DB_PASS=password' \
                10.0.0.140:5000/app/postgresql:latest

docker run --name=gitlab-redis -d \
        10.0.0.140:5000/app/redis:latest

docker run --name='gitlab-demo' -d \
        --link=gitlab-postgresql:postgresql --link=gitlab-redis:redisio \
            --publish=10022:22 --publish=10080:80 \
                --env='GITLAB_PORT=10080' --env='GITLAB_SSH_PORT=10022' \
                    10.0.0.140:5000/app/gitlab:latest
