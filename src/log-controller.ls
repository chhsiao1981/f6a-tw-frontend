angular.module 'f6aTwFrontend'
  .controller 'LogInCtrl', <[ $scope $http ]> ++ ($scope,$http) !-> 
    $http.post('http://local', {"name":"kazami", "password":"dfa"}).success(-> "dsafd") 
