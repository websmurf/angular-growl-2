@demoBasic = angular.module 'demoBasic', ['angular-growl']

@demoBasic.config ['growlProvider', (growlProvider) ->
  growlProvider.globalTimeToLive(3000);
]
@demoBasic.controller 'basicDemoCtrl', ['$scope', 'growl',
($scope, growl) ->
  $scope.basicUsage = (type) ->
    config = {referenceId: 1}
    switch type
      when "success" then growl.success("<b>I'm</b> a success message", config)
      when "info" then growl.info("I'm an info message", config)
      when "warning" then growl.warning("I'm the warning message", config)
      else growl.error("Ups, error message here!", config)
]

###
# Unique Messages Demo
###
@demoUniqueMessages = angular.module 'demoUniqueMessages', ['angular-growl']
@demoUniqueMessages.config ['growlProvider', (growlProvider) ->
  growlProvider.onlyUniqueMessages(false)
  growlProvider.globalTimeToLive(3000);
]

@demoUniqueMessages.factory 'growlFactory', ['$injector',
($injector) ->
  -> $injector.instantiate(growlProvider)
]

@demoUniqueMessages.controller 'uniqueMessagesCtrl', ['$scope', 'growlFactory',
($scope, growlFactory) ->
  growlInst = new growlFactory()

  $scope.basicUsage = (type) ->
    config = {referenceId: 2}
    switch type
      when "success" then growl.success("<b>I'm</b> a success message", config)
      when "info" then growl.info("I'm an info message", config)
      when "warning" then growl.warning("I'm the warning message", config)
      else growl.error("Ups, error message here!", config)
]

@demoApp = angular.module 'demoApp', [
  'ui.bootstrap',
  'ngSanitize',
  'ngAnimate',
  'demoBasic',
  'demoUniqueMessages'
]
