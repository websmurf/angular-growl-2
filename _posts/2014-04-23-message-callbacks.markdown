---
layout: default
title:  Message Callbacks
hashkey: config-message-callbacks
categories:
- docs
- configuration
---

<div class="row">
  <div class="col-md-6">
    <p>Two callbacks are triggered during a growl notification life-cycle. When it is displayed an <code>onopen</code> callback is trigger.
      When the message closes an <code>onclose</code> callback is trigger. Callbacks are functions provided in the config of a message.</p>

{% highlight js %}
app.controller("demoCtrl", ['$scope', 'growl', function($scope, growl) {
  $scope.addSpecialWarnMessage = function() {
    growl.warning("Warning MEssage", {
      onclose: function() {
        console.log('The message is closed!');
      },
      onopen: function() {
        console.log('The message is open!');
      }
    });
  }
}]);
{% endhighlight %}
  </div>
  <div class="col-md-6">
    <p data-height="268" data-theme-id="0" data-slug-hash="mLoAq" data-default-tab="result" class='codepen'>See the Pen <a href='http://codepen.io/JanStevens/pen/mLoAq/'>Angular Growl Reverse Messages</a> by Jan Stevens (<a href='http://codepen.io/JanStevens'>@JanStevens</a>) on <a href='http://codepen.io'>CodePen</a>.</p>
  </div>
</div>
