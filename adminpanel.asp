<%response.Buffer=false%>
<%

  
  set conn = server.CreateObject ("ADODB.Connection")   
  conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.MapPath ("SignIn.mdb")

  set rs = server.CreateObject ("ADODB.Recordset")
   if Request.Querystring("del")<>"" then
      sql="DELETE FROM Signin WHERE ID=" & Request.Querystring("del")
        conn.Execute sql
        if err<>0 then
          response.write("No update permissions!")
      else
          Response.Redirect("adminpanel.asp")
      end if
    end if
  if Request.Querystring("id")<>"" then
   rs.Open "SELECT * FROM Signin ", conn, 3,3
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
<html>
    <head>
        <title>Artsy Jewels</title>
       
	<link href="cssfile.css" rel="stylesheet" type="text/css">   
    
    </head>
<body>
    

    There are <% response.write(Application("visitors"))%> online now! 

<% Response.write("<br><br><br><br>")%>
<%


'Build connection
	set con = server.CreateObject ("ADODB.Connection")
	con.Provider="Microsoft.Jet.OLEDB.4.0"
    con.Open "C:\inetpub\wwwroot\ArtsyJewel\SignIn.mdb"

    set rs = Server.CreateObject("ADODB.Recordset")
  
%>
<centre>
    <table border="1">
        <tr>
            <th>Username</th>
            <th>Email</th>
        </tr>
        <% rs.Open "SELECT * FROM Signin ", conn, 1 
        do until rs.EOF %>
        <tr>
            <td><%Response.write(rs("username") )%></td>
            <td><%Response.write(rs("email") )%></td>
            
        </tr>
        <% 

        rs.MoveNext
        loop
        rs.Close
        conn.Close
       
       %>
    </table>
    </centre>

 
</body>
</html>