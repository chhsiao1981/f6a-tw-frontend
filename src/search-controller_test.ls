describe 'controller: f6aTwFrontend.SearchCtrl', (...) ->
  before-each module 'f6aTwFrontend'

  SearchCtrl = {}
  scope = {}

  before-each inject ($controller, $root-scope) ->
    scope := $root-scope.$new!
    SearchCtrl = $controller 'SearchCtrl', do
      $scope: scope

  it 'should attach a list of awesome things to the scope', ->
    expect scope.awesome-things.length .to-be 3
