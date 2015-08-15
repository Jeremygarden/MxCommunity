<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Homepage</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="resources/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
<link href="resources/css/bootstrap-social.css" rel="stylesheet" type="text/css" />
<link href="resources/css/custom.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.front-image{margin-top: -20px;

 vertical-align: middle;
opacity: 1.8;}
.front-bg{
min-width:100%;max-height: 95%; 0px;0px;0px;0px;
 }
 .front-container{
  width: 1170px;
 }
 .form-signin {
max-width: 1000px;
margin: -1100px auto 10px;
text-align: center;
</style>
</head>
<body>
  <div id="fb-root"></div>
  <script type="text/javascript">
  (function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
  </script>
<div id="navbarInversePreview"  class="navbar navbar-inverse navbar-fixed-top" role="navigation">
              <div class="navbar-inner">
              <div class="container">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                </a>
                <a class="brand" href="#"><strong>MxCommunity</strong></a>
                <div class="nav-collapse collapse navbar-responsive-collapse">
                <ul class="nav">
                  <li class="active"><a href="#">Home</a></li>
                  <li><a href="#"  data-toggle="tooltip" title="Sign up to be the one!" data-placement="right">Upload Photo</a></li>
                  <li><a href="#" data-toggle="tooltip" title="Sign up to be the one!" data-placement="right">Create Group</a></li>
                  <li class="navbar-text" style="padding:0 15px 0;"></li>
                </ul>
                <div class="navbar-search pull-left">
                  <input type="text" class="search-query span2" placeholder="Search">
                </div>
                <ul class="nav pull-right">
                  
                  <li class="divider-vertical"></li>
                 <li>
              <div class="fb-like" data-send="false" data-layout="button_count" data-width="50" data-show-faces="false" data-action="like"></div>
            </li>
            <li class="twitter">
              <a href="https://twitter.com/share" class="twitter-share-button"  data-text="MxCommunity is a funky destination platform for DIAOSI of the USA" data-lang="en" data-hashtags="!!!!!!!">Tweeter</a>
            </li>
            <li><div class="g-plusone" data-size="medium" data-href="http://google.com"></div></li>    
      </ul>
    </div><!-- /.nav-collapse -->
  </div>
 </div><!-- /navbar-inner -->
</div><!-- /navbar -->
 
    
    <div class="front-image">
    <img class="front-bg" src="http://nb9.stumbleupon.netdna-cdn.com/DPUjhWlBLdy0NI3w5dsC6g">
    </div>

     <div class="container">

       <form class="form-signin" action="validate">
        <h1>MxCommunity,</h1></p>
        <h2>Your private nest if you feel LONELY and COLD</h2>
        <div class="divider">
                  <span><strong>&nbsp;</strong></span>
                </div>
              <div id="signup-options">
                <div class="wrapper-facebook">

                    <button class="connect-service btn-large btn-foursquare"><strong>Sign in using username</strong></button>
                </div>
                <div class="divider"><h1></h1></div>
              </div>
       <input type="text" class="form-control" name="username" placeholder="Your Username" required>
       <input type="password" class="form-control" name="password" placeholder="Password" required>
       <button class="btn btn-large btn-primary btn-warning" type="submit" value="submit">Log in</button>

       <div class="signup-call">
        "Need an account?"<a href="${pageContext.request.contextPath}/signup" ><h4>Sign up RIGHT NOW!</h4></a>
       </div>
      </form>
    </div>  
  
<div id="fb-root"></div>

   <script type="text/javascript">
  (function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/fr_FR/all.js#xfbml=1&appId=239545502808545";
  fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));

  window.___gcfg = {lang: 'fr'};

  (function() {
    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
    po.src = 'https://apis.google.com/js/plusone.js';

    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
  })();
    
  !function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="https://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");
  </script>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="//code.jquery.com/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.js"></script>
    <script>    
  $('a').tooltip();        
</script> 
  </body>
</html>