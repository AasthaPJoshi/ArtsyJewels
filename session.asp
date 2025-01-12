<%@language=Vbscript%>
<%option explicit%>
<%
	dim strname
	strname=Request.Form("username")
	session("username")=strname	
%>
<html>
<body>
hello &nbsp;&nbsp;<%=strname%>!
<p>
what is your interest?<br>

<li><a href="Sports.asp">sports</a></li><br>
<li><a href="politics.asp">politics</a></li><br>
<li><a href="fas.asp">fasion</a></li><br>
<li><a href="events.asp">events</a></li><br>
</body>
</html>