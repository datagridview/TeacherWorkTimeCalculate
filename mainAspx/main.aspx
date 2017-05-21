<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<frameset name="frame" FRAMEBORDER=0 FRAMESPACING=0 rows='60,*,24'>
   <frame id="top"  name="top"  scrolling="no" frameborder=0 framspacing=0 noresize src="top.aspx" MARGINHEIGHT=0 MARGINWIDTH=0 class="Noprint">
   <frameset name="frameinside" FRAMEBORDER=0 FRAMESPACING=0 cols='15%,*'>
       <frame id="body" name="body" scrolling="no" frameborder=0 framspacing=0 src="left.aspx" MARGINHEIGHT=0 MARGINWIDTH=0 noresize >
       <frame id="right" name="right" scrolling="auto" frameborder=0 framspacing=0 src="Admin_Course_Check.aspx" MARGINHEIGHT=0 MARGINWIDTH=0 noresize > 
   </frameset>  
   <frame id="foot" name="foot" scrolling="no" frameborder=0 framspacing=0 noresize src="footer.aspx" MARGINHEIGHT=0 MARGINWIDTH=0 class="Noprint">   
   <noframes>
    <body>
    <p>This page uses frames, but your browser doesn't support them.</p>
    </body>
   </noframes>
</frameset>

</html>
