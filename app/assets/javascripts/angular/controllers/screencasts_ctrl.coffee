App.controller 'ScreencastsCtrl', ['$scope','Screencast', '$location', '$routeParams',($scope,Screencast, $location, $routeParams) ->
  if $location.url() == "/screencasts"
  	$scope.screencasts=Screencast.query()

  $scope.selectedScreencast = null

  if $location.url() == "/screencast/"+$routeParams.id
  	user = Screencast.get(id: $routeParams.id)
  	debugger
  $scope.screencast = {
  	title: "",
  	summary: "",
  	duration: ""
  }
    
  $scope.showScreencast = (screencast) ->
    $scope.selectedScreencast = screencast
   
  $scope.casting = (screencast)->
   	Screencast.create(screencast)
   	$location.path('/screencasts')

  $scope.updating = (screencast)->
    Screencast.update(screencast)
    $location.path('/screencasts')	 
]
