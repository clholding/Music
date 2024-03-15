REPOSITORY=/var/lib/jenkins/workspace
echo "REPOSITORY = $REPOSITORY"

PROJECT_NAME=Music
echo "PROJECT_NAME = $PROJECT_NAME"

cd $REPOSITORY/$PROJECT_NAME

echo "sudo chmod +x $REPOSITORY/$PROJECT_NAME/gradlew"
sudo chmod +x $REPOSITORY/$PROJECT_NAME/gradlew

echo "sudo $REPOSITORY/$PROJECT_NAME/gradlew build"
sudo $REPOSITORY/$PROJECT_NAME/gradlew build