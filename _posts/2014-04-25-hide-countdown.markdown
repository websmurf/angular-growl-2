---
layout: default
title:  Time To Live Countdown
subtitle: "default: false"
hashkey: time-to-live-countdown
categories:
- docs
- configuration
---

<div class="row">
  <div class="col-md-6">
    <p>Messages will have a countdown timer representing the TTL. The countdown timer can be disabled
      on a global and per message basis.</p>

{% highlight js %}
app.config(['growlProvider', function(growlProvider) {
  growlProvider.globalDisableCountDown(true);
}]);
{% endhighlight %}
{% highlight js %}
app.controller("demoCtrl", ['$scope', 'growl', function($scope, growl) {
  $scope.addSpecialWarnMessage = function() {
    growl.warning("Does not have count down timer", {disableCountDown: true});
  }
}]);
{% endhighlight %}
  </div>
  <div class="col-md-6">
    <p data-height="400" data-theme-id="0" data-slug-hash="fsLqw" data-default-tab="result" class='codepen'>See the Pen <a href='http://codepen.io/JanStevens/pen/fsLqw/'>Angular Growl Reverse Messages</a> by Jan Stevens (<a href='http://codepen.io/JanStevens'>@JanStevens</a>) on <a href='http://codepen.io'>CodePen</a>.</p>
  </div>
</div>
