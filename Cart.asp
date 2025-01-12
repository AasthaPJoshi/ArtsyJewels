<%

  
  set conn = server.CreateObject ("ADODB.Connection")   
  conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.MapPath ("SignIn.mdb")

  set rs = server.CreateObject ("ADODB.Recordset")
   if Request.Querystring("del")<>"" then
      sql="DELETE FROM cart WHERE ID=" & Request.Querystring("del")
        conn.Execute sql
        if err<>0 then
          response.write("No update permissions!")
      else
          Response.Redirect("Cart.asp")
      end if
    end if
  if Request.Querystring("id")<>"" then
   rs.Open "SELECT * FROM cart ", conn, 3,3
  rs.AddNew 
  'Put username and password in record
  rs("Gid")=Request.Querystring("ID")
  rs("Name")=Request.Querystring("Name")
  rs("Price")=Request.Querystring("Price")
  rs("ext")=Request.Querystring("img")
  'Save record
  rs.Update 
  if err=0 then
    Response.Redirect("Earingsdetail.asp")
  end if
  rs.Close
 end if

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
    <a href="Cart.asp">           &nbsp;|&nbsp;Cart</a>
    <a href="Logout.asp">         &nbsp;|&nbsp;Logout</a> 
	
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
    




	<div id="breadcrumbs">
		<div class="container">
			<ul>
				<li><a href="#">Home</a></li>
				<li>Cart</li>
			</ul>
		</div>
		<!-- / container -->
	</div>
	<!-- / body -->

	<div id="body">
		<div class="container">
			<div id="content" class="full">
				<div class="cart-table">
                    
	<table border=0 width=50% style="border:1px solid black;margin-left:auto;margin-right:auto;">

<% rs.Open "SELECT * FROM cart ", conn, 1 
do until rs.EOF %>
<tr>
				<div>
                    <td>   <img src="images/earing/<%=rs("ext")%>" alt="<%=rs("Name")%>"> </td>
                    <td>   <h3>DESIGN</h3>     </td>
                    <td> <p>Rs <% Response.Write(rs("price")) %></td> 
                        <% Href="Cart.asp?del="&rs("ID")  %>
                        <td class="delete"><a href="<%=Href%>" class="ico-del">
                    </a></td></p>
                    
                </div>
</tr>
                <% 

                rs.MoveNext
                loop
                rs.Close
                conn.Close
               
               %>
            </div>
        </table>
			<!-- / content -->
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