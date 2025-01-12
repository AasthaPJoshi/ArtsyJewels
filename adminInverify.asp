<%response.Buffer=false%>

<%

'save the username and password in a variable
u=Request.form("username")
p=Request.form("password")
Session("username")=u
'Build connection
	set con = server.CreateObject ("ADODB.Connection")
	con.Provider="Microsoft.Jet.OLEDB.4.0"
    con.Open "C:\inetpub\wwwroot\ArtsyJewel\adminpanel.mdb"

    set rs = Server.CreateObject("ADODB.Recordset")
    rs.Open "Table1",con,0,3,2
while NOT rs.EOF
    if rs("username") = u then
    if rs("password") = p then 
    Response.Redirect("adminpanel.asp")
    end if 
    Response.redirect("index.asp")
    else 
        rs.Movenext
    end if 
wend
Response.Redirect("adminpanel.asp")


con.close
set con = Nothing


%>