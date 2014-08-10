---
layout: default
title:  Getting Started
subtitle: Up and running in no time
hashkey: getting-started
categories:
- docs
---

### Dependencies
This repository contains a AngularJS **directive** and **factory**
based on the original plugin developed by Marco Rinck. It has the following dependencies:

* [AngularJS][1] (min v1.2.1)
* [Bootstrap CSS][2] both version 2.3 and the current version 3.2 are supported

You can also use this repository without bootstrap by simply styling the alert classes yourself.
The following dependencies are optional:

* [Angular Translate][3] (latest version) adds support for translating the notifications with angular.
* [Angular Animations][4] (latest version) adds support for transitions and animations.

### Installation
The best way is to install angular-growl-2 is with [bower][5].
This includes the javascript file and the css file.

{% highlight bash %}
bower install angular-growl-v2
{% endhighlight %}

You can also download the [complete repo][6] and include the files manually in your project
{% highlight html %}
<html>
  <head>
    <link href="bootstrap.min.css" rel="stylesheet">
    <script src="angular.min.js"></script>

    <link href="angular-growl.css" rel="stylesheet">
    <script src="angular-growl.js"></script>
  </head>
</html>
{% endhighlight %}

Angular-growl is based on its own AngularJS module, you have to add it to the dependency list
when creating your application module:
{% highlight javascript %}
var app = angular.module('myApp', ['angular-growl']);
{% endhighlight %}

Finally you have to include the growl directive somewhere in your HTML:
{% highlight html %}
<body>
  <div growl></div>
</body>
{% endhighlight %}


[1]: http://angularjs.org/
[2]: http://getbootstrap.com/
[3]: http://angular-translate.github.io/
[4]: http://www.nganimate.org/
[5]: http://bower.io/
[6]: https://github.com/JanStevens/angular-growl-2/archive/master.zip
