#!/bin/bash

set -x
cd ..
npm init -y
npm install webpack webpack-cli eslint@6.8.0 --save-dev
npx eslint --init
mkdir dist src
cd dist
touch index.html
cd ..
cd src
touch index.js
cd ..
touch webpack.config.js

printf "const path = require('path'); \n
module.exports = {
  entry: './src/index.js',
  output: {
    filename: 'main.js',
    path: path.resolve(__dirname, 'dist'),
  },
};" > webpack.config.js
rm -r myProjectSetup
#Set execute permission on your script using chmod command :
#chmod 755 script-name-here.sh