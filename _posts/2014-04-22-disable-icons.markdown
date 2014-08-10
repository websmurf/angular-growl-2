---
layout: default
title:  Disable Icons
subtitle: "default: false"
hashkey: config-disable-icons
categories:
- docs
- configuration
---

<div class="row">
  <div class="col-md-6">
    <p>The icons are hardcoded as base64 strings in the css file. The original images can be found in the
      <code>src/images</code> folder of this repository. The icons can be disabled on a global and per message basis.</p>

{% highlight js %}
app.config(['growlProvider', function(growlProvider) {
  growlProvider.globalDisableIcons(true);
}]);
{% endhighlight %}
{% highlight js %}
app.controller("demoCtrl", ['$scope', 'growl', function($scope, growl) {
  $scope.addSpecialWarnMessage = function() {
    growl.warning("<strong>This is a message without an icon", {disableIcons: true});
  }
}]);
{% endhighlight %}
  </div>
  <div class="col-md-6">
    <p data-height="268" data-theme-id="0" data-slug-hash="GhECf" data-default-tab="result" class='codepen'>See the Pen <a href='http://codepen.io/JanStevens/pen/GhECf/'>Angular Growl Reverse Messages</a> by Jan Stevens (<a href='http://codepen.io/JanStevens'>@JanStevens</a>) on <a href='http://codepen.io'>CodePen</a>.</p>
  </div>
</div>
