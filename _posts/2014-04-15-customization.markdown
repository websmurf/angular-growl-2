---
layout: default
title:  Customization
hashkey: customization
categories:
- docs
- configuration
---

<div class="row">
  <div class="col-md-12">
    <p>It is possible to replace the template of the growlDirective. The template is stored in the <code>$templateCache</code> and can be overwritten by defining your
      own template with id <code>templates/growl/growl.html</code></p>

{% highlight html %}
<script type="text/ng-template" id="templates/growl/growl.html">
// your template here
</script>
{% endhighlight %}
<p><strong>Important: </strong> Omitting one of the <code>ng-show</code> or <code>ng-click</code> directives in the template can brake angular-growl.</p>
<p>A safer option to alter the view of the growl notifications is to change the css. The following classes are defined:</p>
<ul>
  <li><strong>growl-container: </strong>the main div that holds all the growl messages for the directive</li>
  <li><strong>growl-item: </strong>a individual growl notification item</li>
  <li><strong>growl-title: </strong>the title of the notification</li>
  <li><strong>growl-message: </strong>the message of the notification</li>
</ul>
<p>The icons used in the notification are included in the css as base64 strings. The original images (white and colored) can be found in the src/images folder.</p>
  </div>
</div>
