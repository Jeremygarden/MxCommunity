<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Creat Group</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link href="resources/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="resources/css/bootstrap-responsive.min.css" rel="stylesheet"
	type="text/css" />
<link href="resources/css/custom.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.front-image {
	margin-top: -10px;
	min-height: 810px;
}

label {
	color: #FFFFFF
}

.form-signin {
	max-width: 800px;
	margin: -650px auto 10px;
	text-align: left;
}

form {
	display: block;
}

.bs-callout-warning {
	background-color: #945d5d;
	border-color: #f0ad4e;
	position: relative;
}

.bs-callout {
	margin: 20px 0;
	padding: 10px;
	border-left: 3px solid #eee;
}
h5{color: #000000}
</style>


</head>

<body>


	<div id="navbarInversePreview"
		class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".navbar-responsive-collapse"> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
				</a> <a class="brand" href="#"><strong>MxCommunity</strong></a>
				<div class="nav-collapse collapse navbar-responsive-collapse">
					<ul class="nav">
						<li class="active" data-toggle="tooltip"
							title="Sign up to be the one!" data-placement="right"><a
							href="#">Home</a></li>

						<li><a href="${pageContext.request.contextPath}/createGroup">Create
								Group</a></li>
						<li>Post Blog</li>
						<li class="navbar-text" style="padding: 0 15px 0;"></li>
					</ul>
					<div class="navbar-search pull-left">
						<input type="text" class="search-query span2" placeholder="Search">
					</div>
					<ul class="nav pull-right">
						<li><a href="${pageContext.request.contextPath}/login">Log
								out</a></li>
						<li class="divider-vertical"></li>
						<li>
							<div class="fb-like" data-send="false" data-layout="button_count"
								data-width="50" data-show-faces="false" data-action="like"></div>
						</li>
						<li class="twitter"><a href="https://twitter.com/share"
							class="twitter-share-button"
							data-text="MxCommunity is a funky destination platform for DIAOSI of the USA"
							data-lang="en" data-hashtags="你妈逼你穿秋裤了么">Tweeter</a></li>
						<li><div class="g-plusone" data-size="medium"
								data-href="http://google.com"></div></li>
					</ul>
				</div>
				<!-- /.nav-collapse -->
			</div>
		</div>
		<!-- /navbar-inner -->
	</div>
	<!-- /navbar -->
	<div class="container">

		<div class="front-image">

			<img class="front-image" src="resources/img/1223.jpg" />
		</div>
		<form class="form-signin"
			action="${pageContext.request.contextPath}/signupSubmit" method="get">
			<legend>MxCommunity,Your great experience here about life</legend>
			<fieldset>
				
				<label>Your Realname</label> <input type="text" name="realname"
					placeholder="First and last, please" class="span4">
				</p>
				<label>Username</label> 
				  <input type="text" name="username" class="span3">
			 <label>Password</label> <input type="password" name="password" class="span3 tooltip.right"
					data-toggle="tooltip" title="Choose a STRONG password"
					data-placement="right" placeholder="Your password">
					</p>
	
	<label class="radio inline"> <input type="radio" name="female"
		value="Female"> Female
	</label>
	<label class="radio inline"> <input type="radio" name="male"
		value="Male"> Male
	</label>
	<label>Your Current Location:</label>
	<select name="continent" size="1" class="span4">
		<option selected>Select one...</option>
		<option value="afr">West Coast</option>
		<option value="ant">East Coast</option>
		<option value="asia">Middle Village</option>
		<option value="aus">South Beach</option>
	</select>
	<label>Personal Sign:</label>
	<textarea name="comments" class="span4 tooltip.right"
		data-toggle="tooltip" title="Better to let people know you!"
		data-placement="right"></textarea>
	<label class="checkbox"> <input type="checkbox"
		name="subscribe" value="subscribe" data-toggle="collapse"
		data-target="#email"> Subscribe me to the newsletter
	</label>
	<div id="email" class="collapse in">
		<label>Your email address</label><h5>@</h5><input type="text" name="email">
	</div>


	<p>
		<button type="submit" class="btn btn-info btn-large">Submit</button>
	</p>
	</fieldset>

	</form>

	</div>
	</div>


	<div id="fb-root"></div>
	<script type="text/javascript">
		(function() {
			var po = document.createElement('script');
			po.type = 'text/javascript';
			po.async = true;
			po.src = 'https://apis.google.com/js/plusone.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(po, s);
		})();

		!function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (!d.getElementById(id)) {
				js = d.createElement(s);
				js.id = id;
				js.src = "https://platform.twitter.com/widgets.js";
				fjs.parentNode.insertBefore(js, fjs);
			}
		}(document, "script", "twitter-wjs");
	</script>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="//code.jquery.com/jquery.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="resources/js/bootstrap.min.js"></script>
	<script>
		$('textarea').tooltip();
	</script>
	<script>    
  $('input').tooltip();        
</script> 

</body>
</html>