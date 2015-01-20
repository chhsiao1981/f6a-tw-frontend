angular.module 'f6aTwFrontend'
  .controller 'AppCtrl', <[ $scope querySearch $location ]> ++ ($scope, querySearch, $location) ->
    $scope.medFeatureGroups = [
      [
        * feature: '白色'
          img: '/assets/images/med_cate/white.jpg'
        * feature: '紅色'
          img: '/assets/images/med_cate/red.jpg'
        * feature: '黃色'
          img: '/assets/images/med_cate/yellow.jpg'
        * feature: '黑色'
          img: '/assets/images/med_cate/black.jpg'
        * feature: '綠色'
          img: '/assets/images/med_cate/green.jpg'
        * feature: '橘色'
          img: '/assets/images/med_cate/orange.jpg'
        * feature: '藍色'
          img: '/assets/images/med_cate/blue.jpg'
      ],
      [
        * feature: '吸入劑'
          img: '/assets/images/med_cate/01.jpg'
        * feature: '塞劑'
          img: '/assets/images/med_cate/02.jpg'
        * feature: '眼藥水'
          img: '/assets/images/med_cate/03.jpg'
        * feature: '膠囊'
          img: '/assets/images/med_cate/04.jpg'
        * feature: '藥水'
          img: '/assets/images/med_cate/05.jpg'
        * feature: '藥膏'
          img: '/assets/images/med_cate/06.jpg'
        * feature: '藥錠'
          img: '/assets/images/med_cate/07.jpg'
        * feature: '貼布'
          img: '/assets/images/med_cate/08.jpg'
        * feature: '噴鼻劑'
          img: '/assets/images/med_cate/09.jpg'
      ],
      [
        * feature: '三角形'
          img: '/assets/images/med_cate/triangle.jpg'
        * feature: '六角形'
          img: '/assets/images/med_cate/six.jpg'
        * feature: '圓型'
          img: '/assets/images/med_cate/circle.jpg'
        * feature: '橢圓形'
          img: '/assets/images/med_cate/ellipse.jpg'
        * feature: '心形'
          img: '/assets/images/med_cate/heart.jpg'
        * feature: '不規則形'
          img: '/assets/images/med_cate/irregular.jpg'
      ]
    ]
    
    $scope.awesome-things = 
      * title: 'AngularJS',
        url: 'https://angularjs.org/',
        description: 'HTML enhanced for web apps!',
        logo: 'angular.png'
      * title: 'BrowserSync',
        url: 'http://browsersync.io/',
        description: 'Time-saving synchronised browser testing.',
        logo: 'browsersync.png'
      * title: 'GulpJS',
        url: 'http://gulpjs.com/',
        description: 'The streaming build system.',
        logo: 'gulp.png'
      * title: 'Jasmine',
        url: 'http://jasmine.github.io/',
        description: 'Behavior-Driven JavaScript.',
        logo: 'jasmine.png'
      * title: 'Karma',
        url: 'http://karma-runner.github.io/',
        description: 'Spectacular Test Runner for JavaScript.',
        logo: 'karma.png'
      * title: 'Protractor',
        url: 'https://github.com/angular/protractor',
        description: 'End to end test framework for AngularJS applications built on top of WebDriverJS.',
        logo: 'protractor.png'
      * title: 'jQuery',
        url: 'http://jquery.com/',
        description: 'jQuery is a fast, small, and feature-rich JavaScript library.',
        logo: 'jquery.jpg'
      * title: 'Bootstrap',
        url: 'http://getbootstrap.com/',
        description: 'Bootstrap is the most popular HTML, CSS, and JS framework for developing responsive, mobile first projects on the web.',
        logo: 'bootstrap.png'
      * title: 'Angular UI Bootstrap',
        url: 'http://angular-ui.github.io/bootstrap/',
        description: 'Bootstrap components written in pure AngularJS by the AngularUI Team.',
        logo: 'ui-bootstrap.png'
      * title: 'Sass (Node)',
        url: 'https://github.com/sass/node-sass',
        description: 'Node.js binding to libsass, the C version of the popular stylesheet preprocessor, Sass.',
        logo: 'node-sass.png'
      * key: 'livescript',
        title: 'LiveScript',
        url: 'http://livescript.net/',
        description: 'LiveScript is a language which compiles to JavaScript.',
        logo: 'livescript.png'
      * key: 'jade',
        title: 'Jade',
        url: 'http://jade-lang.com/',
        description: 'Jade is a high performance template engine heavily influenced by Haml and implemented with JavaScript for node.',
        logo: 'jade.png'

    angular.for-each $scope.awesome-things, (awesome-thing) !->
      awesome-thing.rank = Math.random!

    onSearchTextSuccess = (the-data) ->
      console.log 'onSearchTextSuccess!: the-data:', the-data
      $location.path '/search'

    $scope.onSearchText = (text) ->
      querySearch.query text, onSearchTextSuccess
