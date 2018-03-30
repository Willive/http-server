rm -rf ./nodejs/web_app
if [ -z "$WEB_APP_REPO" ]
then
      echo "\$WEB_APP_REPO is empty set it to a repo"
else
echo $WEB_APP_REPO
    rm -rf ./web-app
    git clone $WEB_APP_REPO ./web-app
    cp ./express/server.js ./web-app/server.js
    cp ./express/Dockerfile  ./web-app/
    cp ./express/.dockerignore ./web-app/
    docker-compose pull
    docker-compose build
    docker-compose up
fi
