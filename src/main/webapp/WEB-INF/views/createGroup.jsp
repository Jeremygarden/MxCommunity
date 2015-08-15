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
	min-height: 1300px;
}

.form-signin {
	max-width: 800px;
	margin: -1300px auto 10px;
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
							href="${pageContext.request.contextPath}/home">Home</a></li>

						<li><a href="${pageContext.request.contextPath}/createGroup">Create
								Group</a></li>
						<li><a href="${pageContext.request.contextPath}/addMessage">Post Blog</a></li>
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

			<img class="front-image" src="resources/img/group.jpg" />
		</div>
		<form class="form-signin"
			action="${pageContext.request.contextPath}/savegroup" method="get">
			<h1>MxCommunity,</h1>
			<h3>Your whistle here about life</h3>
			<div class="form-group">
				<label for="username">Group Name</label> <input type="text"
					class="form-control" name="name"
					placeholder="Enter your username">
			</div>
			<div class="form-group">
				<label for="password">Group Type</label> <input type="grouptype"
					class="form-control" name="password" placeholder="Group Type">
			</div>
			<div class="form-group">
				<label for="name">Estimated Location</label> <input type="text"
					class="form-control" name="uname" placeholder="Estimated Location">
			</div>
			<div class="form-group">
				<label for="email">Group details</label> <input type="text"
					class="form-control" name="ideas" placeholder="Enter Group details">
			</div>
			<button type="submit" class="btn-large btn-success" value="saveGroup">Create!</button>


			<c:forEach items="${groupDetails}" var="groupDetail">
				<div class="bs-callout bs-callout-warning" id="jquery-required">
					<div>
						<strong>${groupDetail.groupName}</strong>
						</p>
						<h4>${groupDetail.groupDetailID}</h4>
						

					</div>
				</div>
			</c:forEach>

		</form>

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

</body>
</html>