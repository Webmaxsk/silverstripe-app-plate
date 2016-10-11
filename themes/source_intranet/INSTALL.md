## 1 Node & NPM

This will install npm and node in version from .nvmrc
```bash
nvm install
```

#### How to install NVM?
[https://github.com/creationix/nvm](https://github.com/creationix/nvm)

## 2 Node modules & shrinkwrap

#### Install shrinkwrap
```bash
npm install shrinkwrap -g
```

#### Install dependencies
This will install node modules based on package.json
If is npm-shrinkwrap.json file available, it will use exact same versions as on last run, but try to install without this file. This is last chance...
File npm-shrinkwrap.json is generated with command 'npm shrinkwrap --dev'
More info: http://javascript.tutorialhorizon.com/2015/03/21/what-is-npm-shrinkwrap-and-when-is-it-needed/ and https://nodejs.org/en/blog/npm/managing-node-js-dependencies-with-shrinkwrap/
```bash
npm install
```

## 3 Using GULP
Use gulp for watching sass, images, js, ... Gulp binary is located in ./node_modules/gulp/bin/gulp.js

#### Gulp for watching files, development
```bash
./node_modules/gulp/bin/gulp.js watch
```

#### Gulp for production
```bash
./node_modules/gulp/bin/gulp.js production
```

#### Advanced gulp configuration
See README.md and file ./gulp/config.js

Example browsersync setup:
browserSync: {
    proxy: 'http://localhost:3000', // This is your server without browsersync
    port: 5000, // This is your port for watchnig files
    notify: true,
    open: true
},

