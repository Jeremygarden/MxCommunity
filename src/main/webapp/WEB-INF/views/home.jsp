<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Homepage</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="resources/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
<link href="resources/css/custom.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.front-image{margin-top: -10px;min-height: 1400px;}
.form-signin {
max-width: 1000px;

margin: -1300px auto 10px;
text-align: center;
}
form {
display: block;
}
  .itempic{
    min-height: 750px;
    max-width: 1300px;
    margin-left: 120px;
  }
  .carousel-caption{
    margin-top: 
  }
  .carousel-caption h4 {
margin: 0 0 50px;
margin-bottom: 100px;
}
  .carousel-indicators {
position: absolute;
top: 380px;
right: 780px;
max-width: 800px;}
h4,h2{
  color: #D54040;
}
.welcomeuser{
  position: absolute;
  left: 300px;
  top: 300px;
  text-align: center;}
}
</style>

</head>

<body>

 
<div id="navbarInversePreview" class="navbar navbar-inverse navbar-fixed-top" >
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
                  <li class="active" data-toggle="tooltip" title="Sign up to be the one!" data-placement="right"><a href="#">Home</a></li>
                  <li><a href="${pageContext.request.contextPath}/addMessage">Post Blog</a></li>
                  <li><a href="${pageContext.request.contextPath}/createGroup" >Create Group</a></li>
                  <li class="navbar-text" style="padding:0 15px 0;"></li>
                </ul>
                <div class="navbar-search pull-left">
                  <input type="text" class="search-query span2" placeholder="Search">
                </div>
                <ul class="nav pull-right">
                  <li><a href="${pageContext.request.contextPath}/login" >Log out</a></li>
                  <li class="divider-vertical"></li>
                 <li>
              <div class="fb-like" data-send="false" data-layout="button_count" data-width="50" data-show-faces="false" data-action="like"></div>
            </li>
            <li class="twitter">
              <a href="https://twitter.com/share" class="twitter-share-button"  data-text="MxCommunity is a funky destination platform for DIAOSI of the USA" data-lang="en" data-hashtags="你妈逼你穿秋裤了么">Tweeter</a>
            </li>
            <li><div class="g-plusone" data-size="medium" data-href="http://google.com"></div></li>    
                </ul>
                </div><!-- /.nav-collapse -->
              </div>
              </div><!-- /navbar-inner -->
            </div><!-- /navbar -->
 <div class="container-fluid">
  <div class="row-fluid">
    <div class="span12">
      <div id="artCarousel" class="carousel slide"> 
      <ol class="carousel-indicators">
          <li data-target="#artCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#artCarousel" data-slide-to="1"></li>
          <li data-target="#artCarousel" data-slide-to="2"></li>
          <li data-target="#artCarousel" data-slide-to="3"></li>
        </ol>
            <div class="carousel-inner">
              <div class="item active"><img class="itempic" src="resources/img/1.jpg" alt="sdsd">
                <h1 class="welcomeuser">Welcome to MxCommunity, ${username}</h1>
                 <div class="carousel-caption">
              <h2>No matter where are you from</h2>
              <h4>Here are a home for you.</h4>
              
                </div>
                </div>
           <div class="item"><img class="itempic" src="resources/img/2.jpg" alt="">
           <h1 class="welcomeuser">Welcome to MxCommunity, ${username}</h1>
                       <div class="carousel-caption">
              <h2>You can own your private space for yourself</h2>
              <h4>But also meet the person crazy like you.</h4>
                      </div>
          </div>
           <div class="item"><img class="itempic" src="resources/img/3.jpg" alt="">
           <h1 class="welcomeuser">Welcome to MxCommunity, ${username}</h1>
                       <div class="carousel-caption">
              <h2>Post your words upon the page</h2>
              <h4>To be the interesting group organizer.</h4>
              
            </div>
          </div>
           <div class="item"><img class="itempic" src="resources/img/4.jpg" alt="">
           <h1 class="welcomeuser">Welcome to MxCommunity, ${username}</h1>
                       <div class="carousel-caption">
              <h2>Something you wanna get to know</h2>
              <h4>Just come to the MxCommunity</h4>
              
            </div>
          </div>
        </div>
        <a class="left carousel-control" href="#artCarousel" data-slide="prev">&lsaquo;</a><a class="right carousel-control" href="#artCarousel" data-slide="next">&rsaquo;</a>
        </div>
    </div><!-- end span12 -->
  </div><!-- end row --> 
<!-- end container --> 
   

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

<script src="http://code.jquery.com/jquery.js"></script>
<script src="resources/js/bootstrap.min.js"></script> 
<script>
  $('#artCarousel').carousel({
     interval:1800,
     cycle: true  
  });
</script>  
  </body>
</html>