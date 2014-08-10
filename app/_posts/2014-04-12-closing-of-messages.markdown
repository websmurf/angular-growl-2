---
layout: default
title:  Time To Live (TTL)
subtitle: "default: none"
hashkey: config-time-to-live
categories:
- docs
- configuration
---

<div class="row">
  <div class="col-md-6">
    <p>The time to live of a messages can be controlled globally, globally per severity or per message. When the timer
    is over the message will be removed. Following example sets a <strong>global time to live for all the messages:</strong></p>

{% highlight javascript %}
app.config(['growlProvider', function(growlProvider) {
  growlProvider.globalTimeToLive(5000);
}]);
{% endhighlight %}

<p>This sets a global timeout of 5 seconds after which every notification will be closed. It's also possible
to provide the TTL based on the severity of the message.</p>
{% highlight javascript %}
app.config(['growlProvider', function(growlProvider) {
  growlProvider.globalTimeToLive({success: 1000, error: 2000, warning: 3000, info: 4000});
}]);
{% endhighlight %}

<p>The TTL can also be overwritten per message, this will <strong>ignore the globally set TTL</strong></p>
{% highlight javascript %}
app.controller("demoCtrl", ['$scope', 'growl', function($scope, growl) {
  $scope.addSpecialWarnMessage = function() {
    growl.warning("Override global ttl setting", {ttl: 10000});
  }
}]);
{% endhighlight %}

<p>Finally you can disable the closing of individual messages by setting their TTL to -1</p>
{% highlight javascript %}
app.controller("demoCtrl", ['$scope', 'growl', function($scope, growl) {
  $scope.addSpecialWarnMessage = function() {
    growl.warning("this will not be closed automatically", {ttl: -1});
  }
}]);
{% endhighlight %}
  </div>
  <div class="col-md-6">
    <p data-height="400" data-theme-id="0" data-slug-hash="tpaeH" data-default-tab="result" class='codepen'>See the Pen <a href='http://codepen.io/JanStevens/pen/tpaeH/'>Angular Growl Reverse Messages</a> by Jan Stevens (<a href='http://codepen.io/JanStevens'>@JanStevens</a>) on <a href='http://codepen.io'>CodePen</a>.</p>
  </div>
</div>
