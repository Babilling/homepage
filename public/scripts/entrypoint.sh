#!/bin/bash
sed -i -e 's/FLAPPY_SANTA_URL/$FLAPPY_SANTA_URL/g' public/index.html
sed -i -e 's/SANTARMINATOR_URL/$SANTARMINATOR_URL/g' public/index.html
cd homepage && npm install && node index.js > homepage.log

