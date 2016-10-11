'use strict';

var gulp         = require('gulp');
var browserSync  = require('browser-sync');
var sass         = require('gulp-sass');
var sourcemaps   = require('gulp-sourcemaps');
var handleErrors = require('../util/handleErrors');
var config       = require('../config').sass;
var autoprefixer = require('gulp-autoprefixer');
var importCss    = require('gulp-import-css');
var inline_base64 = require('gulp-inline-base64');

gulp.task('sass', function () {
  return gulp.src(config.src)
  // SourceMaps does NOT work, because of SCSS file out of path (mmenu), how to fix?
    //.pipe(sourcemaps.init())
    .pipe(sass(config.settings))
    .pipe(inline_base64({
      baseDir: './src/sass/',
      maxSize: 5 * 1024,
      debug: true
    }))
    .on('error', handleErrors)
    //.pipe(sourcemaps.write())
    .pipe(autoprefixer({ browsers: config.prefix }))
    .pipe(importCss())
    .on('error', handleErrors)
    .pipe(gulp.dest(config.dest))
    .pipe(browserSync.reload({stream:true}));
});
