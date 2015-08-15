<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Creat Group</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="resources/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
<link href="resources/css/custom.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.front-image{margin-top: -10px;min-height: 810px;}
.form-signin {max-width: 800px;margin: -700px auto 10px;text-align: left;}
form {
display: block;
}
.bs-callout-warning {background-color:#945d5d;border-color: #f0ad4e;position: relative;}
.bs-callout {margin: 20px 0;padding: 10px;border-left: 3px solid #eee;}



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
                  <li class="active" data-toggle="tooltip" title="Sign up to be the one!" data-placement="right"><a href="${pageContext.request.contextPath}/home">Home</a></li>
              
                  <li><a href="${pageContext.request.contextPath}/createGroup" >Create Group</a></li>
                  <li>Post Blog</li>
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
  <div class="container">
    
    <div class="front-image">

     <img class="front-image" src="resources/img/1223.jpg"/>
    </div> 
    <form class="form-signin" action="${pageContext.request.contextPath}/messagePost">
       <h1>MxCommunity,</h1><h3>Your whistle here about life</h3>
    
       <textarea name="title" class="span8 tooltip.right" data-toggle="tooltip.right" title="" placeholder="What's on your mind right now?"data-placement="right"></textarea><p></p>
    <button class="btn btn-large btn-primary btn-info" type="submit" >Send out</button></p>

    <h3>History Post</h3>
    <c:forEach items="${messages}" var="message" >
    <div class="bs-callout bs-callout-warning" id="jquery-required">
    <div>
    <strong>${message.title}</strong> </p>
    <h4>${message.date} <button class="btn btn-danger btn-small"><a href="${pageContext.request.contextPath}/deletePost/${message.messageID}">DELETE</a></button></h4>
    
    </div>
  </div>
  </c:forEach>
    </div>
  </form>

  </div>
   

<div id="fb-root"></div>
  <script type="text/javascript">

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
    <script src="resources/js/bootstrap.min.js"></script>
    <script>    
     $('textarea').tooltip();        
    </script>   
  
  </body>
</html>