---
layout: default
title:  Disable Close Button
subtitle: "default: false"
hashkey: config-disable-close-btn
categories:
- docs
- configuration
---

<div class="row">
  <div class="col-md-6">
    <p>The close button allows the user to close the message.
      The button can be disabled on a global and per message basis.</p>

{% highlight js %}
app.config(['growlProvider', function(growlProvider) {
  growlProvider.globalDisableCloseButton(true);
}]);
{% endhighlight %}
{% highlight js %}
app.controller("demoCtrl", ['$scope', 'growl', function($scope, growl) {
  $scope.addSpecialWarnMessage = function() {
    growl.warning("<strong>This is a message without an icon", {disableCloseButton: true});
  }
}]);
{% endhighlight %}
  </div>
  <div class="col-md-6">
    <p data-height="268" data-theme-id="0" data-slug-hash="GhECf" data-default-tab="result" class='codepen'>See the Pen <a href='http://codepen.io/JanStevens/pen/GhECf/'>Angular Growl Reverse Messages</a> by Jan Stevens (<a href='http://codepen.io/JanStevens'>@JanStevens</a>) on <a href='http://codepen.io'>CodePen</a>.</p>
  </div>
</div>
