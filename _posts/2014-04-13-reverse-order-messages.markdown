---
layout: default
title:  Reverse Order Messages
subtitle: "default: false"
hashkey: config-reverse-messages
categories:
- docs
- configuration
---

<div class="row">
  <div class="col-md-6">
    <p>By default new messages are added to the bottom of the growl stack. This property allows to
      <strong>reverse</strong> the default order. When set to true new messages will be placed at the
      top of the stack (instead of the default bottom).</p>

{% highlight js %}
app.config(['growlProvider', function(growlProvider) {
  growlProvider.globalReversedOrder(true);
}]);
{% endhighlight %}
  </div>
  <div class="col-md-6">
    <p data-height="268" data-theme-id="0" data-slug-hash="hkrcA" data-default-tab="result" class='codepen'>See the Pen <a href='http://codepen.io/JanStevens/pen/hkrcA/'>Angular Growl Reverse Messages</a> by Jan Stevens (<a href='http://codepen.io/JanStevens'>@JanStevens</a>) on <a href='http://codepen.io'>CodePen</a>.</p>
  </div>
</div>
