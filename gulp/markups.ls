gulp = require 'gulp'

paths = gulp.paths

$ = (require 'gulp-load-plugins')!

gulp.task 'markups', ->
  rename-to-html = (path) !-> path.extname = '.html'

  gulp.src [
    paths.src + '/**/*.jade'
    '!' + paths.src + '/index.jade'
  ]
    .pipe $.consolidate 'jade', {pretty: '  '}
    .on 'error', (err) ->
      console.log err.to-string!
      @emit 'end'
    .pipe $.rename rename-to-html
    .pipe gulp.dest paths.tmp

gulp.task 'index-to-tmp', ->
  gulp.src [
    paths.src + '/index.jade'
  ]
    .pipe gulp.dest paths.tmp

gulp.task 'index-to-html', <[ inject ]> ->
  rename-to-html = (path) !-> path.extname = '.html'

  gulp.src [
    paths.tmp + '/index.jade'
  ] 
    .pipe $.consolidate 'jade', {pretty: '  '}
    .pipe $.rename rename-to-html
    .pipe gulp.dest paths.tmp
