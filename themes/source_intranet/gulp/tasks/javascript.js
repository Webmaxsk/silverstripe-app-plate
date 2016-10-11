'use strict';

var gulp = require('gulp');
var changed = require('gulp-changed');
var config = require('../config').javascript;
var browserSync  = require('browser-sync');

gulp.task('javascript', function() {
  return gulp.src(config.src)
    .pipe(changed(config.dest))
    .pipe(gulp.dest(config.dest))
    .pipe(browserSync.reload({stream:true}));
});
