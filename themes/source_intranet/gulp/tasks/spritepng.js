/*
var gulp = require('gulp');
var sprite = require('gulp-sprite');
var config = require('../config').pngSprite;

gulp.task('spritepng', function () {
    gulp.src('./src/png/*.png')
        .pipe(sprite('sprites.png', {
            imagePath: 'dist/img',
            cssPath: './src/scss/utils/',
            preprocessor: 'scss'
        }))
        .pipe(gulp.dest('./dist/img/'));
});
    */