rm -rf ./nodejs/web_app
if [ -z "$WEB_APP_REPO" ]
then
      echo "\$WEB_APP_REPO is empty set it to a repo"
else
echo $WEB_APP_REPO
     git clone $WEB_APP_REPO ./nodejs/wweb
    docker-compose pull
    docker-compose build
    docker-compose up
fi
