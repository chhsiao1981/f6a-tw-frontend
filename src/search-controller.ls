angular.module 'f6aTwFrontend'
  .controller 'SearchCtrl', <[ $scope querySearch ]> ++ ($scope, querySearch) ->
    $scope.$watch (-> querySearch.get-update-time!), (new-val, orig-val) ->
      data = querySearch.get-data!
      console.log 'SearchCtrl: querySearch.update-time: new-val:', new-val, new-val.get-time!, 'orig-val:', orig-val, orig-val.get-time!, 'data:', data
      $scope.queryData = data.data

    $scope.awesome-things = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
