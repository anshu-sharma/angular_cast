
window.App = angular.module('AngularCasts', [
  'templates',
  'ngRoute',
  'ngResource',
  'controllers',
  'directives',
])

App.config(['$routeProvider', '$httpProvider',

  ($routeProvider, $httpProvider, $cookieStore) ->

    $routeProvider
      .when('/screencasts/new',
        templateUrl: "screencasts/form.html"
        controller: "ScreencastsCtrl"
      ).when('/screencasts',
        templateUrl: "screencasts/index.html"
        controller: "ScreencastsCtrl"
      ).when('/screencast/:id',
        templateUrl: "screencasts/update_form.html"
        controller: "ScreencastsCtrl"

      )



])

controllers = angular.module('controllers', [])
directives = angular.module('directives', [])
