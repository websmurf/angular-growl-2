---
layout: default
title:  Animations
hashkey: animations
categories:
- docs
- configuration
---

<div class="row">
  <div class="col-md-12">
    <p>Beginning with angularJS 1.2 growl messages can be automatically animated with CSS animations when adding and/or closing them.
      All you have to do is load the angular-animate.js provided by angularJS and add <strong>ngAnimate</strong> to your applications dependency list.
    </p>

{% highlight html %}
<html>
  <head>
    <link href="bootstrap.min.css" rel="stylesheet">
    <script src="angular.min.js"></script>
    <script src="angular-animate.min.js"></script>

    <link href="angular-growl.css" rel="stylesheet">
      <script src="angular-growl.js"></script>
  </head>
</html>

{% endhighlight %}

{% highlight js %}
var app = angular.module('myApp', ['angular-growl', 'ngAnimate']);
{% endhighlight %}

<p>Angular Growl comes with a pre-defined animation of 0.5s to opacity. To configure the animations change the <code>.growl-container > .growl-item.*</code> classes in the css file
  to your preference. For example changing the animation length to 1s instead of 0.5s default.</p>

{% highlight css %}
.growl-container > .growl-item.ng-enter,
.growl-container > .growl-item.ng-leave {
  -webkit-transition:1s linear all;
  -moz-transition:1s linear all;
  -o-transition:1s linear all;
  transition:1s linear all;
}
{% endhighlight %}

<p>Basically you can style your animations just as you like if ngAnimate can pick it up automatically.
  See the <a href="http://docs.angularjs.org/api/ngAnimate" target="_blank">ngAnimate docs</a> for more info.</p>
  </div>
</div>
