---
layout: default
title:  Handeling Server Sent Notifications
hashkey: server-sent-notifications
categories:
- docs
- configuration
---

<div class="row">
  <div class="col-md-6">
    <p>When doing <strong>$http</strong> requests, you can configure angular-growl to look automatically for messages in $http responses,
    so your business logic on the server is able to send messages/notifications to the client and you can display them automagically:</p>
{% highlight js %}
app.config(['growlProvider', '$httpProvider', function(growlProvider, $httpProvider) {
  $httpProvider.interceptors.push(growlProvider.serverMessagesInterceptor);
}]);
{% endhighlight %}

<p>This adds a pre-defined angularJS HTTP interceptor that is called on every HTTP request and looks if response contains messages.
Interceptor looks in response for a <strong>messages</strong> array of objects with <strong>text</strong>, <strong>title</strong> and <strong>severity</strong> key.
This is an example response which results in 3 growl messages:</p>

{% highlight json %}
{
  "someOtherData": {...},
  "messages": [
    {"text":"this is a server message", "severity": "warn"},
    {"text":"this is another server message", "severity": "info"},
    {"text":"and another", "severity": "error", "title" : "Server side errors!"}
  ]
}
{% endhighlight %}

<p>The default message, text, severity and title key can be configured</p>

{% highlight js %}
app.config(["growlProvider", "$httpProvider", function(growlProvider, $httpProvider) {
    growlProvider.messagesKey("my-messages");
    growlProvider.messageTextKey("message-text");
    growlProvider.messageTitleKey("message-title");
    growlProvider.messageSeverityKey("severity-level");
    $httpProvider.responseInterceptors.push(growlProvider.serverMessagesInterceptor);
}]);
{% endhighlight %}

<p>It's also possible to insert variables from the server response. The following json response will place the <strong>first name</strong> value
  in place of the <strong>{{ field }}</strong> key.</p>
{% highlight json %}
{
  "messages": [
    {"text":"{{field}} this is a server message", "severity": "warning",  "variables": {"field":"first name"}}
  ]
}
{% endhighlight %}

  </div>
  <div class="col-md-6">
    <p data-height="268" data-theme-id="0" data-slug-hash="GFKHd" data-default-tab="result" class='codepen'>See the Pen <a href='http://codepen.io/JanStevens/pen/GFKHd/'>Angular Growl Reverse Messages</a> by Jan Stevens (<a href='http://codepen.io/JanStevens'>@JanStevens</a>) on <a href='http://codepen.io'>CodePen</a>.</p>
  </div>
</div>
