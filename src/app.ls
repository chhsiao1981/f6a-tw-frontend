angular.module 'f6aTwFrontend', <[ ngAnimate ngCookies ngTouch ngSanitize ngResource ngRoute ui.bootstrap ]> 
  .config <[ $routeProvider ]> ++ ($route-provider) ->
    $route-provider
      .when '/', do
        template-url: 'app.html',
        controller: 'AppCtrl'
      .when '/search', do
        template-url: 'search.html',
        controller: 'SearchCtrl'
      .otherwise do
        redirect-to: '/'

