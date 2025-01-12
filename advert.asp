<%
url=Request.QueryString("url")
If url<>"" then Response.Redirect(url)
%>
<!DOCTYPE html>
<html>
<body>

<%
set ad=Server.CreateObject("MSWC.AdRotator")
ad.TargetFrame="target='_blank'"
response.write(adrotator.GetAdvertisement("advertisements.txt"))
%>

<p>
<a href="advertisements.txt">
<img src="/images/btn_view_text.gif"></a>
</p>
</body>
</html>