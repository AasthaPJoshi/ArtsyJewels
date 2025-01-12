

 <% @Language="Vbscript"%>
 
    <%
        dim con , u , p , rs ,e
        set con = Server.CreateObject("ADODB.connection")
        con.Provider = "Microsoft.Jet.OLEDB.4.0"
        con.Open "C:\inetpub\wwwroot\ArtsyJewel\SignIn.mdb"

        set rs = Server.CreateObject("ADODB.Recordset")
        rs.Open "Signin",con,0,3,2

        u=Request.form("username")
        p=Request.form("password")
        Session("username")=u
        while NOT rs.EOF
          if rs("username") = u then 
        Response.Redirect("login.html")

          else 
            rs.Movenext
          end if 
        wend

      rs.MoveFirst
        rs.Addnew       
        
       
        e=Request.form("email")
        rs("username")=u
        rs("password")=p
        rs("email")=e
        rs.Update
        rs.Movenext
        Response.Redirect("index.asp")

        con.close
        set con = Nothing
    %>



