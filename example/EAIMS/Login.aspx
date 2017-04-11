<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width:100%;
            height:100%;
            background-color:#00ffff;
        }
         .auto-style2 {
            width:60%;
            height:500px;
            background-color:#ffd800;
            margin-left:20%;
            margin-top:5%;
        }
        .auto-style3 {
            height: 40%;
            width:100%;
        }
    </style>
</head>
<body class="auto-style1">
    <form id="form1" runat="server">
    <div class="auto-style2">
    <div style="height:30%"></div>
    <table class="auto-style3">
        <tr>
            <td style="width:25%"></td>
            <td style="width:25%;text-align:center">
                <asp:Label ID="Label1" runat="server" Text="账号"></asp:Label>
            </td>
            <td style="width:25%;text-align:left">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="width:25%"></td>
        </tr>
        <tr>
            <td></td>
            <td style="width:25%;text-align:center">
                <asp:Label ID="Label2" runat="server" Text="密码"></asp:Label>
            </td>
            <td style="width:25%;text-align:left">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td style="text-align:center">
                <asp:Button ID="Button1" runat="server" Text="登录" style="height: 21px" OnClick="Button1_Click" />
            </td>
            <td style="text-align:center">
                <asp:Button ID="Button2" runat="server" Text="忘记密码" />
            </td>
            <td></td>
        </tr>
    </table>
    <div style="height:30%"></div>
    </div>    
    </form>
</body>
</html>
