---
layout: default
title:  Unique Messages
subtitle: "default: true"
hashkey: config-unique-messages
categories:
- docs
- configuration
---

<div class="row">
  <div class="col-md-6">
    <p>Accept only unique messages as a new message. If a message is already displayed (text, severity and title are the same)
      then this message will not be added to the displayed message list.</p>
    <p>Set to false, to always display all messages regardless if they are already displayed or not.
      Uniqueness of messages is determined by the message <strong>text, severity and title</strong>.</p>

{% highlight js %}
app.config(['growlProvider', function(growlProvider) {
  growlProvider.onlyUniqueMessages(false);
}]);
{% endhighlight %}
  </div>
  <div class="col-md-6">
    <p data-height="268" data-theme-id="0" data-slug-hash="FBylw" data-default-tab="result" class='codepen'>See the Pen <a href='http://codepen.io/JanStevens/pen/FBylw/'>Angular Growl Unique Messages</a> by Jan Stevens (<a href='http://codepen.io/JanStevens'>@JanStevens</a>) on <a href='http://codepen.io'>CodePen</a>.</p>
  </div>
</div>
