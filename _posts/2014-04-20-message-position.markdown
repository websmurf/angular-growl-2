---
layout: default
title:  Global Message Position
subtitle: "default: top-right"
hashkey: config-global-message-position
categories:
- docs
- configuration
---

<div class="row">
  <div class="col-md-6">
    <p>Controls the location of all the messages. The default location is top-right like in most notification systems.
      Changing the property can only be done on a global basis, allowed options are:</p>

      <ul>
        <li>top-left</li>
        <li>top-right</li>
        <li>bottom-left</li>
        <li>bottom-right</li>
        <li>top-center</li>
        <li>bottom-center</li>
      </ul>

{% highlight js %}
app.config(['growlProvider', function(growlProvider) {
  growlProvider.globalPosition('bottom-center');
}]);
{% endhighlight %}
  </div>
  <div class="col-md-6">
    <p data-height="268" data-theme-id="0" data-slug-hash="tGunH" data-default-tab="result" class='codepen'>See the Pen <a href='http://codepen.io/JanStevens/pen/tGunH/'>Angular Growl Reverse Messages</a> by Jan Stevens (<a href='http://codepen.io/JanStevens'>@JanStevens</a>) on <a href='http://codepen.io'>CodePen</a>.</p>
  </div>
</div>
