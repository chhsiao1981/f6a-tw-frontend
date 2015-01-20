angular.module 'f6aTwFrontend'
  .controller 'SearchCtrl', <[ $scope querySearch ]> ++ ($scope, querySearch) ->
    $scope.$watch (-> querySearch.get-update-time!), (new-val, orig-val) ->
      console.log 'SearchCtrl: querySearch.update-time: new-val:', new-val, new-val.get-time!, 'orig-val:', orig-val, orig-val.get-time!, 'data:', querySearch.get-data!
      $scope.queryData = querySearch.get-data!

    $scope.awesome-things = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
