set -x
reset

clear

ppp=`pwd`

cd synner-server/src/main/resources/static

bower install

pwd
cd $ppp
pwd

ls
mvn clean package


cd synner-server/src/main/resources/static/
bower install
npx sass main.scss main.css
npm run live-server

