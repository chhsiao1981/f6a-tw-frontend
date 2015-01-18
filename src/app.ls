angular.module 'f6aTwFrontend', <[ ngAnimate ngCookies ngTouch ngSanitize ngResource ngRoute ui.bootstrap ]> 
  .config <[ $routeProvider ]> ++ ($route-provider) ->
    $route-provider
      .when '/', do
        template-url: 'app.html',
        controller: 'AppCtrl'
      .otherwise do
        redirect-to: '/'

