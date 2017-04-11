<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin10.aspx.cs" Inherits="admin10" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style type="text/css">
            .auto-style1 {
            width:100%;
            height:670px;
           background-image:url('adbg3.png');
            /*background-repeat:no-repeat;*/
            /*background-size:100%;*/
         }
            .auto-style2 {
            width:100%;
            height:120px;
            background-color:#eef1f7;
            background-image:url('bg.png');
            border-bottom:0px solid #c7cedc;
        }
             .auto-style3 {
                height:200px;
                padding-left:60px;
                padding-right:60px;
        }
             .auto-style4 {
                height:300px;
                padding-left:60px;
                padding-right:60px;
        }
            .auto-style117 {
            width:80px;
            height:20px;            
            background-image:url('submit.png');
            background-repeat:no-repeat;         
            background-position:center;
        }  
            </style>
</head>
<body style="background-color:#f2f2f2">
    <form id="form1" runat="server">
        <div class="auto-style2">
            <div style="height:40px"></div>
            <table style="width:100%">
                <tr>
                    <td style="text-align:center"><asp:Label ID="lab" runat="server" Text="当前页面：修改用户" Font-Names="黑体" Font-Size="15px" ForeColor="#44536a"  ></asp:Label></td>
                    <td style="text-align:center ;width:40%"></td>                  
                    <td style="text-align:center"><asp:Label ID="Label1" runat="server" Text="搜索工号" Font-Names="黑体" Font-Size="12px" ForeColor="#040404" TabIndex="1" ></asp:Label>:<asp:TextBox ID="TextBox8" runat="server" Width="103px" TabIndex="2"></asp:TextBox>&nbsp;<asp:Button ID="Button3" runat="server" Text="确定" OnClick="Button3_Click" CssClass="auto-style117" TabIndex="3"/></td>
                </tr>
            </table>                                    
        </div>
        &nbsp;
        <div class="auto-style3">
           &nbsp;<asp:Label ID="lbltjyh" runat="server" Text="修改用户列表" Font-Names="黑体" Font-Size="15px" ForeColor="#44536A" TabIndex="4"></asp:Label>
            <br />
            <br />
           <asp:GridView ID="GridView1" runat="server" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" PageSize="5" style="margin-left: 12px" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Size="12px" HorizontalAlign="Center" TabIndex="5">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField HeaderText="操作" ShowSelectButton="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
        &nbsp;
        <div class="auto-style4">
            <table style="width:100%">
                <tr style="height:20px">
                    <td style="width:25%"></td>
                    <td colspan="2">&nbsp;<asp:Label ID="Label2" runat="server" Text="当前修改：" Font-Names="黑体" Font-Size="15px" ForeColor="#44536A" TabIndex="6"></asp:Label>
                        <asp:Label ID="Label3" runat="server"  Font-Names="黑体" Font-Size="15px" ForeColor="#44536A" TabIndex="7"></asp:Label>
                    </td>
                    <td style="line-height:30px;"></td>
                </tr>
                <tr style="height:20px">
                    <td style="width:25%"></td>
                    <td>&nbsp;<asp:Label ID="Label4" runat="server" Text="姓名：" ForeColor="#040404" TabIndex="8" ></asp:Label></td>
                    <td><asp:TextBox ID="TextBox1" runat="server" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Names="黑体" Font-Size="10px" ForeColor="#999999" Width="200px" TabIndex="9"></asp:TextBox></td>
                    <td><asp:Button ID="Button1" runat="server" Text="修改" OnClick="Button1_Click" CssClass="auto-style117" TabIndex="24"/></td>
                </tr>
                <tr style="height:20px">
                    <td style="width:25%"></td>
                    <td>&nbsp;<asp:Label ID="Label11" runat="server" Text="性别：" ForeColor="#040404" TabIndex="10" ></asp:Label></td>
                    <td><asp:TextBox ID="TextBox2" runat="server" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Names="黑体" Font-Size="10px" ForeColor="#999999" Width="200px" TabIndex="11"></asp:TextBox></td>
                    <td><asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="删除"  CssClass="auto-style117" TabIndex="25"/></td>
                </tr>
                <tr style="height:20px">
                    <td style="width:25%"></td>
                    <td>&nbsp;<asp:Label ID="Label6" runat="server" Text="密码：" ForeColor="#040404" TabIndex="12" ></asp:Label></td>
                    <td><asp:TextBox ID="TextBox3" runat="server" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Names="黑体" Font-Size="10px" ForeColor="#999999" Width="200px" TabIndex="13"></asp:TextBox></td>
                    <td style="width:25%"></td>
                </tr>
                <tr style="height:20px">
                    <td style="width:25%"></td>
                    <td>&nbsp;<asp:Label ID="Label5" runat="server" Text="出生年月：" ForeColor="#040404" TabIndex="14" ></asp:Label></td>
                    <td><asp:TextBox ID="TextBox4" runat="server" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Names="黑体" Font-Size="10px" ForeColor="#999999" Width="200px" TabIndex="15"></asp:TextBox></td>
                    <td style="width:25%"></td>
                </tr>
                <tr style="height:20px">
                    <td style="width:25%"></td>
                    <td>&nbsp;<asp:Label ID="Label7" runat="server" Text="院系：" ForeColor="#040404" TabIndex="16" ></asp:Label></td>
                    <td><asp:TextBox ID="TextBox5" runat="server" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Names="黑体" Font-Size="10px" ForeColor="#999999" Width="200px" TabIndex="17"></asp:TextBox>
                    </td>
                    <td style="width:25%"></td>
                </tr>
                <tr style="height:20px">
                    <td style="width:25%"></td>
                    <td>&nbsp;<asp:Label ID="Label8" runat="server" Text="职称：" ForeColor="#040404" TabIndex="18" ></asp:Label></td>
                    <td><asp:TextBox ID="TextBox6" runat="server" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Names="黑体" Font-Size="10px" ForeColor="#999999" Width="200px" TabIndex="19"></asp:TextBox></td>
                    <td style="width:25%"></td>
                </tr>
                <tr style="height:20px">
                    <td style="width:25%"></td>
                    <td>&nbsp;<asp:Label ID="Label9" runat="server" Text="联系方式：" ForeColor="#040404" TabIndex="20" ></asp:Label></td>
                    <td><asp:TextBox ID="TextBox7" runat="server" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Names="黑体" Font-Size="10px" ForeColor="#999999" Width="200px" TabIndex="21"></asp:TextBox></td>
                    <td></td>
                </tr>
                <tr style="height:20px">
                    <td style="width:25%"></td>
                    <td>&nbsp;<asp:Label ID="Label10" runat="server" Text="权限：" ForeColor="#040404" TabIndex="22" ></asp:Label></td>
                    <td><asp:DropDownList ID="DropDownList1" runat="server" Width="200px" TabIndex="23">
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
