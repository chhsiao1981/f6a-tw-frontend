gulp = require 'gulp'

paths = gulp.paths

$ = (require 'gulp-load-plugins')!

wiredep = require 'wiredep' .stream

gulp.task 'inject', <[ index-to-tmp partials styles scripts ]>, ->
  inject-styles = gulp.src [
    paths.tmp + '/**/*.css'
    '!' + paths.tmp + '/vendor.css'
  ], {read: false}

  inject-scripts = gulp.src [
    paths.tmp + '/**/*.js'
    '!' + paths.tmp + '/partials/templateCacheHtml.js'
    '!' + paths.tmp + '/**/*_test.js'
    '!' + paths.tmp + '/**/*.mock.js'
  ]
    .pipe $.angular-filesort!

  inject-markups = gulp.src paths.tmp + '/partials/templateCacheHtml.js', {read: false}

  inject-options =
    ignore-path: [paths.tmp]
    add-root-slash: false

  inject-markup-options =
    name: 'partials'
    ignore-path: [paths.tmp]
    add-root-slash: false

  wiredep-options =
    directory: 'bower_components'
    exclude: <[ /bootstrap-sass-official/ /bootstrap\.css/ /bootstrap\.css/ /foundation\.css/ ]>

  gulp.src paths.tmp + '/index.jade'
    .pipe $.inject inject-styles, inject-options
    .pipe $.inject inject-scripts, inject-options
    .pipe $.inject inject-markups, inject-markup-options
    .pipe wiredep wiredep-options
    .pipe gulp.dest paths.tmp
