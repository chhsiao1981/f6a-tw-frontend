gulp = require 'gulp'

paths = gulp.paths

gulp.task 'watch', <[ index-to-html markups inject ]> ->
  gulp.watch [
    paths.src + '/**/*.scss'
    paths.src + '/**/*.{js,ls}'
    'bower.json'
  ], <[ inject ]>
  gulp.watch [
    paths.src + '/**/*.jade'
    '!' + paths.src + '/index.jade'
  ], <[ markups ]>
  gulp.watch paths.src + '/index.jade', <[ index-to-html ]>
