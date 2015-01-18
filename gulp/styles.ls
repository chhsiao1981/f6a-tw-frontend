gulp = require 'gulp'

paths = gulp.paths

$ = (require 'gulp-load-plugins')!

gulp.task 'styles:inject' ->
  sass-options = 
    style: 'expanded'

  inject-files = gulp.src [
    paths.src + '/**/*.scss'
    '!' + paths.src + '/index.scss'
    '!' + paths.src + '/vendor.scss'
  ], {read: false}

  inject-options =
    transform: (file-path) ->
      file-path = file-path.replace paths.src + '/components/', '../components'
      file-path = file-path.replace paths.src + '/', ''
      '@import \'' + file-path + '\';'

    starttag: '// injector'
    endtag: '// endinjector'
    add-root-slash: false

  gulp.src [
    paths.src + '/**/*.scss'
  ]
    .pipe $.inject inject-files, inject-options
    .pipe gulp.dest paths.tmp

gulp.task 'styles', <[ styles:inject ]>, ->
  sass-options =
    style: 'expanded'

  gulp.src [
    paths.tmp + '/index.scss'
    paths.tmp + '/vendor.scss'
  ]
    .pipe $.sass sass-options
    .pipe $.autoprefixer!
      .on 'error', (err) ->
        console.error err.to-string!
        @emit 'end'
    .pipe gulp.dest paths.tmp
