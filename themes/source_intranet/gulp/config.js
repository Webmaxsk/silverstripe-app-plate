'use strict';

var path = require('path');

var ip_address = require('../../../../config.json').ip_address;

function distName() {
  var folder = path.dirname(__dirname);
  folder = path.basename(folder);
  return folder.replace('source_', '');
}

var folderName = distName();
var dest = './../'+ folderName;
var src = './src';


module.exports = {
  destFolder: dest,

  browserSync: {
    proxy: 'http://' + ip_address, // This is your server without browsersync
    port: 5000, // This is your port for watchnig files
    notify: true
    //open: true
  },

  sass: {
    src: src + '/sass/**/*.{sass,scss}',
    dest: dest + '/css',
    prefix: [
      'ie >= 9',
      'ie_mob >= 10',
      'ff >= 30',
      'chrome >= 34',
      'safari >= 7',
      'opera >= 23',
      'ios >= 7',
      'android >= 4.4',
      'bb >= 10'
    ],
    settings: {
      includePaths: ['../../foundation/scss'],
      indentedSyntax: true, // Enable .sass syntax!
      imagePath: 'images' // Used by the image-url helper
    }
  },

  images: {
    src: src + '/images/*.{jpg,png}',
    dest: dest + '/images'
  },

  markup: {
    src: src + '/templates/**/*.ss',
    dest: dest + '/templates'
  },

  fonts: {
    src: src + '/fonts/**',
    dest: dest + '/fonts'
  },

  javascript: {
    src: src + '/javascript/**',
    dest: dest + '/js'
  },

  jslint: {
    srcJs: src + '/js/**/*.js',
    srcCoffee: src + '/js/**/*.coffee'
  },

  production: {
    cssSrc: dest + '/css/*.css',
    jsSrc: dest + '/js/*.js',
    dest: dest,
    cssDest: dest + '/css',
    jsDest: dest + '/js'
  },

  pngSprite: {
    src: src + '/png',
    glob: '**/*.png',
    dest: dest
  },

  svgSprite: {
    type: 'background', // 'inline'
    src: src + '/icons',
    glob: '**/*.svg',
    dest: dest + '/images',
    removeFills: true,
    optionsInline: {
      mode: {
        symbol: {
          sprite: 'sprite.svg',
          dest: '.',
          render: {
            scss: {
              template: 'gulp/tpl/_sprite-inline.scss',
              dest: '../../source_'+folderName+'/src/sass/_sprite.scss'
            }
          }
        }
      }
    },
    optionsBackground: {
      shape :{
        spacing : {        
            padding : 1
        }   
      },
      mode: {
        css: {
          layout: 'horizontal',
          sprite: 'sprite.svg',
          dest: '.',
          render: {
            scss: {
              template: 'gulp/tpl/_sprite-background.scss',
              dest: '../../source_'+folderName+'/src/sass/_sprite.scss'
            }
          }
        }
      },
      variables: {
        cssPath: '../images/'
      }
    }
  },

  browserify: {
    // A separate bundle will be generated for each
    // bundle config in the list below.
    // See README.md for more info.
    bundleConfigs: [
      {
        entries: src + '/js/main.coffee',
        dest: dest + '/js',
        outputName: 'main.js',
        extensions: ['.coffee'],
        require: ['jquery']
      },
	  {
        entries: src + '/js/html5shiv.coffee',
        dest: dest + '/js',
        outputName: 'html5shiv.js',
        extensions: ['.coffee'],
      }
    ]
  }
};
