---
layout: default
title:  Reference ID
subtitle: "default: 0"
hashkey: config-reference-id
categories:
- docs
- configuration
---

<div class="row">
  <div class="col-md-6">
    <p>When using inline growl notifications, it is possible to have multiple growl directives.
      For this reason it is possible to define a referenceId on the directive.
      When sending a message give it the same referenceId as the one in the directive configuration.</p>
{% highlight js %}
app.controller("demoCtrl", ['$scope', 'growl', function($scope, growl) {
  $scope.sendToGrowl = function() {
    growl.warning("This is only send to growl directive with referenceId = 1", {referenceId: 1});
    }
}]);
{% endhighlight %}
{% highlight html %}
<form>
  <div growl inline="true" reference="1"></div>
  <label>Name:<label><input type="text" name="name" />
</form>
{% endhighlight %}
  </div>
  <div class="col-md-6">
    <p data-height="350" data-theme-id="0" data-slug-hash="CIepj" data-default-tab="result" class='codepen'>See the Pen <a href='http://codepen.io/JanStevens/pen/CIepj/'>Angular Growl Reverse Messages</a> by Jan Stevens (<a href='http://codepen.io/JanStevens'>@JanStevens</a>) on <a href='http://codepen.io'>CodePen</a>.</p>
  </div>
</div>
