
<!DOCTYPE html>
<html>
<head>
	<title>Artsy Jewels</title>
	<link href="cssfile.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class ="header">
	<div class ="innerheader">
<a href="" class="logo"> Artsy Jewels </a>
<p style="text-align: right;">
	Welcome <% Response.Write(Session("username")) %>
<a href="Cart.asp">         &nbsp;|&nbsp;Cart</a>
<a href="Logout.asp">        &nbsp;|&nbsp;Logout</a>  </p>
<a href="adminlogin.html">        &nbsp;|&nbsp;AdminLogin</a>  </p>


</div>


<div class="content">
	<div class="banner-image">
		<div class="inner-banner-image">
			<div class="banner-content">

<h1> Artsy Jewels </h1>
<p> Naturally And Uniquely Designed only for you. </p>
<a href="" class ="button"> Shop Now </a>
</div>
</div>
</div>
</div>


<div class="container">
	<div class ="items">

<a href="Trendingdetail.html">

<img src="img/necklace/5.jpg " alt="" class="thumbnail">
<div class ="caption">
	<h2>Treanding Top10 </h2>
	<p>Choose Your Design , For Minimal Price . &copy; Designer.</p>
</div>
</a>
</div>

<div class="items">
	<a href="Earingsdetail.asp">
		<img src="img/earing/e2.jpg " alt="" class="thumbnail">
		<div class="caption">
			<h2>Earrings</h2>
			<p>Choose Your Design , For Minimal Price . &copy; Designer.</p>
</div>
</a>
</div>
		<div class ="items">
		<a href ="Pendentdetail.html">
			<img src="img/necklace/p5.jpg " alt="" class="thumbnail">
			<div class="caption">
			<h2>Pendant</h2>
			<p>Choose Your Design , For Minimal Price . &copy; Designer. </p>
</div>
</a>
</div>
</div>

<div class="container">
	<div class ="items">

<a href="Fingerringdetail.html">

<img src="img/ring/4.jpg " alt=" " class="thumbnail">
<div class ="caption">
	<h2>Finger Ring</h2>
	<p> Choose Your Design , For Minimal Price . &copy; Designer.</p>
</div>
</a>
</div>

<div class="items">
	<a href="Neckweardetail.html">
		<img src="img/necklace/11.jpg " alt=" " class="thumbnail">
		<div class="caption">
			<h2>Neckwear</h2>
			<p>Choose Your Design , For Minimal Price . &copy; Designer.</p>
</div></a>
</div>
<div class ="items">
<a href ="BraceletDetail.html">
	<img src="img/bracelet/7.jfif" alt=" " class="thumbnail">
	<div class="caption">
	<h2>Bracelet</h2>
	<p>Choose Your Design , For Minimal Price . &copy; Designer. </p>
</div>
</a>

</div>
</div>

		<footer class ="footer">
			<div class="container">
				<p>Copyright &copy;  ArtsyJewels .All Rights Reserved | Contact Us:-+91 9867243980</p>
</div>
</footer>


</body>
</html>