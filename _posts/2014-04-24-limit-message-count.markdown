---
layout: default
title:  Limit Messages Count
subtitle: "default: undefined"
hashkey: config-limit-message-count
categories:
- docs
- configuration
---

<div class="row">
  <div class="col-md-6">
    <p>Accept only X messages inside the growl container.
    Automatically flush collection to limited count on each new message and so overwriting
    growl messages.
    Useful when growl is handling messages corresponding to specified element
    (for example input box inside form), and you need to show specified number of messages
    (for example 1). The setting is set on the growl div container.</p>

    <p><strong>Important:</strong> New messages will always overwrite old once, even when the user
      has disabled the TTL (by clicking on the message).</p>


{% highlight html %}
<body>
  <div growl limit-messages="1"></div>
</body>
{% endhighlight %}
  </div>
  <div class="col-md-6">
    <p data-height="268" data-theme-id="0" data-slug-hash="duHDx" data-default-tab="result" class='codepen'>See the Pen <a href='http://codepen.io/JanStevens/pen/duHDx/'>Angular Growl Reverse Messages</a> by Jan Stevens (<a href='http://codepen.io/JanStevens'>@JanStevens</a>) on <a href='http://codepen.io'>CodePen</a>.</p>
  </div>
</div>
