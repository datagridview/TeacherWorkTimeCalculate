<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin9.aspx.cs" Inherits="admin9" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
           .auto-style2 {
            width:100%;
            height:120px;
            background-color:#eef1f7;
            background-image:url('bg.png');
            border-bottom:0px solid #c7cedc;
        }
             .auto-style3 {
                height:120px;
                padding-left:60px;
                padding-right:60px;
        }
         .auto-style4 {
            width: 25%;
            height: 20px;
        }
        .auto-style5 {
            height: 20px;
        }
         </style>
</head>
<body style="background-color:#f2f2f2">
    <form id="form1" runat="server">
        <div class="auto-style2">
        <div style="height:40px"></div>
        <table style="width:100%">
            <tr style="height:40px">
                <td style="text-align:center;width:20%"><asp:Label ID="lbldqym" runat="server" Text="当前页面：添加用户" Font-Names="黑体" Font-Size="15px" ForeColor="#44536a"  ></asp:Label></td>
                <td></td>
            </tr>
        </table>
        </div>
        &nbsp;
        <div class="auto-style3">
            <table style="width:100%">
                <tr>
                    <td style="width:25%"></td>
                    <td style="text-align:center"><asp:Label ID="lbltjyh" runat="server" Text="添加用户表格" Font-Names="黑体" Font-Size="15px" ForeColor="#44536A" TabIndex="1"></asp:Label></td>
                    <td style="text-align:center"><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" class="auto-style8" Width="69px" Text="确定" TabIndex="2"/></td>
                    <td style="width:25%"></td>
                </tr>
                <tr>
                    <td style="width:25%"></td>
                    <td style="text-align:center"><asp:Label ID="Label1" runat="server" Text="工号：" ForeColor="#44536A" TabIndex="3" ></asp:Label></td>
                    <td>&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="199px" BorderStyle="Solid" BorderColor="#999999" BorderWidth="1px" Font-Names="黑体" Font-Size="10px" ForeColor="#999999" TabIndex="4" ></asp:TextBox></td>
                    <td style="width:25%"></td>
                </tr>
                <tr>
                    <td style="width:25%"></td>
                    <td style="text-align:center"><asp:Label ID="Label2" runat="server" Text="姓名：" ForeColor="#44536A" TabIndex="5" ></asp:Label></td>
                    <td>&nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="200px" BorderStyle="Solid" BorderColor="#999999" BorderWidth="1px" Font-Names="黑体" Font-Size="10px" ForeColor="#999999" TabIndex="6"></asp:TextBox></td>
                    <td style="width:25%"></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td style="text-align:center" class="auto-style5"><asp:Label ID="Label3" runat="server" Text="初始密码：" ForeColor="#44536A" TabIndex="7" ></asp:Label></td>
                    <td class="auto-style5">&nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="200px" BorderStyle="Solid" BorderColor="#999999" BorderWidth="1px" Font-Names="黑体" Font-Size="10px" ForeColor="#999999" TabIndex="8"></asp:TextBox></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td style="width:25%"></td>
                    <td style="text-align:center"><asp:Label ID="Label4" runat="server" Text="权限：" ForeColor="#44536A" TabIndex="9" ></asp:Label></td>
                    <td>&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Width="205px" TabIndex="10">
                            <asp:ListItem>管理员</asp:ListItem>
                            <asp:ListItem>普通用户</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width:25%"></td>
                </tr>
            </table>
            </div>
    </form>
</body>
</html>
