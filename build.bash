set -x
reset

clear

#mvn clean package

cd synner-server/src/main/resources/static/
bower install
npx sass main.scss main.css
npm run live-server

