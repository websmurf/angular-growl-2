---
layout: default
title:  Inline Messages
subtitle: "default: false"
hashkey: config-inline-messages
categories:
- docs
- configuration
---

<div class="row">
  <div class="col-md-6">
    <p>This allows to display the growl messages inline instead of floating in the top-right corner. Multiple inline growl containers
      can be used on a single page (see reference id for more information). The property can be set on a global basis or overwrite it
      per directive.</p>
{% highlight js %}
app.config(['growlProvider', function(growlProvider) {
  growlProvider.globalInlineMessages(true);
}]);
{% endhighlight %}
{% highlight html %}
<form>
  <div growl inline="true"></div>
  <label>Name:<label><input type="text" name="name" />
</form>
{% endhighlight %}
  </div>
  <div class="col-md-6">
    <p data-height="350" data-theme-id="0" data-slug-hash="HrqDf" data-default-tab="result" class='codepen'>See the Pen <a href='http://codepen.io/JanStevens/pen/HrqDf/'>Angular Growl Reverse Messages</a> by Jan Stevens (<a href='http://codepen.io/JanStevens'>@JanStevens</a>) on <a href='http://codepen.io'>CodePen</a>.</p>
  </div>
</div>
