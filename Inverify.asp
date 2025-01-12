<%response.Buffer=false%>

<%

'save the username and password in a variable
u=Request.form("username")
p=Request.form("password")
Session("username")=u
'Build connection
	set con = server.CreateObject ("ADODB.Connection")
	con.Provider="Microsoft.Jet.OLEDB.4.0"
    con.Open "C:\inetpub\wwwroot\ArtsyJewel\SignIn.mdb"

    set rs = Server.CreateObject("ADODB.Recordset")
    rs.Open "Signin",con,0,3,2
while NOT rs.EOF
    if rs("username") = u then
    if rs("password") = p then 
    Response.Redirect("index.asp")
    end if 
    response.write("pass wrong")
    else 
        rs.Movenext
    end if 
wend
Response.write("Username is not valid . Please Signup")

con.close
set con = Nothing


%>