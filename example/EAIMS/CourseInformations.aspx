<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CourseInformations.aspx.cs" Inherits="CourseInformations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style type="text/css">
        .auto-style1 {
            width:100%;
            height:100%;
        }
         .auto-style2 {
            height:30px;
        }
          .auto-style3 {
            height:15px;
        }
          .auto-style4 {
            height:400px;
        }
           </style>
</head>
<body class="auto-style1">
    <form id="form1" runat="server">
        <div class="auto-style2">
            <asp:Label ID="Label1" runat="server" Text="当前页面：课程信息"></asp:Label>
        </div>
        <div class="auto-style3"></div>
        <div class="auto-style4">
            <asp:GridView ID="GridView1" runat="server" Width="100%" Height="400px">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
