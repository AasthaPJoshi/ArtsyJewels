<%

 
  set conn = server.CreateObject ("ADODB.Connection")   
  conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.MapPath ("SignIn.mdb")
  set rs = server.CreateObject ("ADODB.Recordset")

  rs.Open "SELECT * FROM earing ", conn, 1

%>
<!DOCTYPE html>
<html>
<head>
    <title>Artsy Jewels</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
	<link rel="stylesheet" media="all" href="css/style.css">
  
	<link href="cssfile.css" rel="stylesheet" type="text/css">
    
</head>
<body>

	<div class ="header">
		<div class ="innerheader">
	<a href="index.asp" class="logo"> Artsy Jewels </a>
	<p style="text-align: right;">
		Welcome <% Response.Write(Session("username")) %>
	<a href="Cart.asp">         &nbsp;|&nbsp;Cart</a>
	<a href="Logout.asp">        &nbsp;|&nbsp;Logout</a>   </p>
        
	
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
<br>
	<div id="body">
		<div class="containerr">
				<div class="pagination">
					<ul>
						<li><a href="#"><span class="ico-prev"></span></a></li>
						<li><a href="#">1</a></li>
						<li class="active"><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#"><span class="ico-next"></span></a></li>
					</ul>
				</div>
			<div class="products-wrap">
				<aside id="sidebar">
					<div class="widget">
						<h3>Products per page:</h3>
						<fieldset>
							<input checked type="checkbox">
							<label>8</label>
							<input type="checkbox">
							<label>16</label>
							<input type="checkbox">
							<label>32</label>
						</fieldset>
					</div>
					<div class="widget">
						<h3>Sort by:</h3>
						<fieldset>
							<input checked type="checkbox">
							<label>Popularity</label>
							<input type="checkbox">
							<label>Date</label>
							<input type="checkbox">
							<label>Price</label>
						</fieldset>
					</div>
					<div class="widget">
						<h3>Condition:</h3>
						<fieldset>
							<input checked type="checkbox">
							<label>New</label>cary
							<input type="checkbox">
							<label>Used</label>
						</fieldset>
					</div>
					<div class="widget">
						<h3>Price range:</h3>
						<fieldset>
							<div id="price-range"></div>
						</fieldset>
					</div>
				</aside>
				<div id="content">
					<section class="products">
                    <% do until rs.EOF %>
						<article>
							<a href="e1.html"><img src="images/earing/<%=rs("ext")%>" alt="<%=rs("Name")%>"></a>
							<h3><a href="e1.html">Design </a></h3>
                            <h4><a href="e1.html">Rs <% Response.Write(rs("price")) %></a></h4>
                            <% Href = "Cart.asp?ID="&rs("ID")&"&Name="&rs("Name")&"&img="&rs("ext")&"&Price="&rs("Price") %>
							<p><a href="<%=Href%>" class="btn-add" role="button">Add to Cart</a></p>
						</article>
                        <% 

                        rs.MoveNext
                        loop
                        rs.Close
                        conn.Close
                       
                       %> 	
					</section>

				</div>
				<!-- / content -->
			</div>
			<div class="pagination">
				<ul>
					<li><a href="#"><span class="ico-prev"></span></a></li>
					<li class="active"><a href="#">1</a></li>
					<li ><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#"><span class="ico-next"></span></a></li>
				</ul>
			</div>
		</div>
		<!-- / container -->
	</div>
	<!-- / body -->

	
	<footer class ="footer">
		<div class="container">
			<p>Copyright &copy;  ArtsyJewels .All Rights Reserved | Contact Us:-+91 9867243980</p>
		</div>
	</footer>

	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script>window.jQuery || document.write("<script src='js/jquery-1.11.1.min.js'>\x3C/script>")</script>
	<script src="js/plugins.js"></script>
	<script src="js/main.js"></script>






</body>
</html>