---
layout: default
title:  HTML in Messages
subtitle: "always-on"
hashkey: config-html-in-messages
categories:
- docs
- configuration
---

<div class="row">
  <div class="col-md-6">
    <p>Starting from v0.6, HTML can always be included in the message text (not the title!).
      It uses the <code>$sce</code> service from angular to mark the HTML as trusted.</p>

{% highlight js %}
app.controller("demoCtrl", ['$scope', 'growl', function($scope, growl) {
  $scope.addSpecialWarnMessage = function() {
    growl.warning("<strong>This is a HTML message</strong>");
  }
}]);
{% endhighlight %}
  </div>
  <div class="col-md-6">
    <p data-height="268" data-theme-id="0" data-slug-hash="HspjK" data-default-tab="result" class='codepen'>See the Pen <a href='http://codepen.io/JanStevens/pen/HspjK/'>Angular Growl Reverse Messages</a> by Jan Stevens (<a href='http://codepen.io/JanStevens'>@JanStevens</a>) on <a href='http://codepen.io'>CodePen</a>.</p>
  </div>
</div>
