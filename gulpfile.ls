gulp = require 'gulp'

gulp.paths =
  src: 'src'
  dist: 'dist'
  tmp: '.tmp'
  e2e: 'e2e'

(require 'require-dir') './gulp'

gulp.task 'default' <[ clean ]> ->
  gulp.start 'build'
