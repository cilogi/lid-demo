<!DOCTYPE html>
<html lang="en">
<head>
    <title>About Lid Demo</title>
<#include "inc/head.ftl">
</head>
<body class="cilogi-info">
<#include "inc/navbar.ftl">
<div class="container" style="margin-top:10px; font-size:15px;">
    <div style="padding: 0.25em" class="cilogi-title">
        <h1 class="cilogi-title">Home Page</h1>
    </div>
    <hr class="soften">
    <section>
        <div class="row">
            <div class="col-md-8">
                <p>Its difficult to find a simple authentication library for Java, let alone
                   App Engine.  I have <a href="https://gaeshiro.appspot.com/">previously tried to set up something</a> using
                   <a href="http://shiro.apache.org/">Apache Shiro</a> but it ended up being more complicated than
                   I liked.</p>
                <p>This solution is as simple as I could make it, given that I wanted to cover the most popular social ids,
                   namely Google and Facebook, together with Email.  I'm working with the requirement that the Email address
                   will be available which is why I haven't included twitter.  Perhaps this is a little too 2010?</p>
                <p>Each of the three ways of logging in is done differently.  Facebook uses the standard OAuth 2.0 scheme.
                   Its easy enough to use this for Google too, but I chose to use the User Service, as we're on App Engine.
                   The Email approach is to send an Email, with an encrypted token which contains the Email address, and then
                   log the user in when they click on the Email's link which sends the token back.  Users are logged in
                   by cookie which persists 30 days by default.</p>
                <p>The big advantage of this approach is that we don't store any passwords at any time, and there is very
                   little use of the datastore (perhaps none, its used for session storage but I don't think its charged for).
                   So, there is no question of us having a security breach and its light on resources.</p>
                <h2>How to use it</h2>
                <p>There is a demo <a href="http://cilogi-liddemo.appspot.com/">here</a>, running on App Engine.</p>
                <p>The code to this demo can be <a href="https://github.com/cilogi/lid-demo">found on Github</a>.</p>
                <p>There is a more setup information and discussion on the library site at <a href="https://github.com/cilogi/lid">Github</a></p>
            </div>
        </div>
    </section>
</div>
<!-- container -->
<#include "inc/foot.ftl">
</body>
</html>