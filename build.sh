#!/bin/bash
# build.sh, PROJECT_NAME 값은 변경하기

REPOSITORY=/var/lib/jenkins/workspace
echo "REPOSITORY = $REPOSITORY"

if [ -n "$MUSIC" ]; then
  PROJECT_NAME="$MUSIC"
else
  PROJECT_NAME=$(sudo basename "$(pwd)")
fi
echo PROJECT_NAME ::: $PROJECT_NAME

cd $REPOSITORY/$PROJECT_NAME

echo "sudo chmod +x $REPOSITORY/$PROJECT_NAME/gradlew"
sudo chmod +x $REPOSITORY/$PROJECT_NAME/gradlew

echo "sudo $REPOSITORY/$PROJECT_NAME/gradlew clean build"
sudo $REPOSITORY/$PROJECT_NAME/gradlew clean build