<!DOCTYPE html>
<html lang="en">
<head>
    <title>Lid Demo Login</title>
<#include "inc/head.ftl">
</head>
<body class="cilogi-info">
<#include "inc/navbar.ftl">
<div class="container-fluid" style="margin-top:10px; font-size:15px;">
    <div style="padding: 0.25em" class="cilogi-title">
        <h1 class="cilogi-title">Sign in</h1>
    </div>
    <hr class="soften">
    <section>
        <div class="row">
            <div class="col-md-6 col-sm-8">
                <div class="loggedIn" style="display:none">
                    <p>You are signed in!</p>
                    <p><a class="btn btn-default" href="/index.html">Home</a></p>
                </div>

                <div class="loggedOut" style="display:none">
                    <form class="login-form" method="POST" action="/login/google">
                        <div class="form-group">
                            <button type="submit" class="btn btn-block btn-social btn-google">
                                <i class="fa fa-google"></i> Sign in with Google
                            </button>
                        </div>
                    </form>
                    <form class="login-form" method="POST" action="/login/facebook">
                        <div class="form-group">
                            <button type="submit" class="btn btn-block btn-social btn-facebook">
                                <i class="fa fa-facebook"></i> Sign in with Facebook
                            </button>
                        </div>
                    </form>
                    <form id="loginByEmail" class="login-form form-inline" method="POST" action="/login/email">
                        <div class="form-group">
                            <button type=submit class="btn btn-social btn-openid">
                                <i class="fa fa-sign-in"></i> Sign in with Email
                            </button>
                            <input type="text" name="email" id="email" class="form-control" placeholder="Enter Email Address"
                                   style="padding-bottom:5px; padding-top:1px; width:200px;  display: inline-block;">
                            <span id="emailResponse" style="display:block"></span>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="loggedOut" class="row">
            <div class="col-md-6 col-sm-8" style="display:none;">
                <p>To sign in with Email please enter your email address and press the <code>Sign in with Email</code>
                   button.  An email will be send to the address you provide.  When you
                   receive the Email, click the link it provides and you'll be signed in and brought back to this
                   site.  You will remain signed in for 30 days or until you sign out.
                </p>
            </div>
        </div>
    </section>
</div>
<#include "inc/foot.ftl">
</body>
</html>