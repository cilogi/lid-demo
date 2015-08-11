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
        <h1 class="cilogi-title">Login</h1>
    </div>
    <hr class="soften">
    <section>
        <div class="row">
            <div class="col-md-6 col-sm-8">
                <div id="loggedIn" style="display:none">
                    <p>You are logged in!</p>
                    <p><a class="btn btn-default" href="/index.html">Home</a></p>
                </div>

                <div id="loggedOut" style="display:none">
                    <form class="login-form" method="POST" action="/login/google">
                        <div class="form-group">
                            <button type="submit" class="btn btn-block btn-social btn-google">
                                <i class="fa fa-google"></i> Sign in with Google
                            </button>
                        </div>
                    </form>
                    <form class="login-form" method="POST" action="/login/facebook" style="margin-bottom: -10px;">
                        <div class="form-group">
                            <button type="submit" class="btn btn-block btn-social btn-facebook">
                                <i class="fa fa-facebook"></i> Sign in with Facebook
                            </button>
                        </div>
                    </form>
                    <form id="loginByEmail" class="login-form form-inline" method="POST" action="/login/email">
                        <div class="form-group">
                            <button type=submit class="btn btn-social btn-openid" style="margin-top: 10px;">
                                <i class="fa fa-sign-in"></i> Sign in with Email
                            </button>
                            <input type="text" name="email" id="email" class="form-control" placeholder="Email Address"
                                   style="padding-bottom:5px; padding-top:1px; width:200px; margin-top: 10px; display: inline-block;">
                            <span id="emailResponse"></span>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="row">
            <div class="col-md-6 col-sm-8">
                <p>Please enter you email address and then press the <code>Sign in with Email</code>
                   button.  An email will then be send to the address you provide.  When you
                   receive the Email click on the link it provides and you'll be brought back to this
                   site, signed in.  A cookie will be set which will
                   keep you signed in for 30 days unless you sign out, or clean up your browser cookies.
                </p>
            </div>
        </div>
    </section>
</div>

<#include "inc/foot.ftl">
</body>
</html>