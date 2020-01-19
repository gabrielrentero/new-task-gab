#!/bin/bash

echo thoughtworks-task > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/task-key /tmp/.auth vagrant@192.168.2.225:/tmp/.auth
scp -i /opt/task-key ./jenkins/deploy/publish vagrant@192.168.2.225:/tmp/publish
scp -i /opt/task-key ./jenkins/deploy/docker-compose.yml vagrant@192.168.2.225:/tmp/maven/docker-compose.yml
ssh -i /opt/task-key vagrant@192.168.2.225 "/tmp/publish"
