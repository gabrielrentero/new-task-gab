#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="thoughtworks-task"

echo "** Logging in ***"
docker login -u testsaccount -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG testsaccount/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push testsaccount/$IMAGE:$BUILD_TAG
