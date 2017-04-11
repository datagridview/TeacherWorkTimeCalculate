<%@ Page Language="C#" AutoEventWireup="true" CodeFile="m_checkMessage_send.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="css/m_checkMessage.css" type="text/css"/>
    <style type="text/css">
         .con{
            background-color:#eef1f7;
            height:670px;
        }
        .GridView{
            font-family:SimHei;
        }
        .auto-style1 {
            width: 100%;
            height:120px;
            background-color:#eef1f7;
            background-image:url('bg.png');
            border-bottom:0px solid #c7cedc;
        }  
           .auto-style2 {
            padding-left:160px;
            padding-right:160px;
            padding-top:20px;
        }  
            .auto-style3 {
            padding-top:20px;
        } 
    </style>
</head>
<body class="con">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <div style="height:40px"></div>
            <table style="width:100%">
                <tr style="height:20px">
                    <td style="text-align:center;width:20%;;font-size:small"> 当前页面：查看留言</td>
                    <td></td>
                </tr>
                <tr style="height:20px">
                    <td style="width:20%"></td>
                    <td>
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="20px" ImageUrl="~/images/SEND2.png" OnClick="ImageButton2_Click" Width="80px"/>&nbsp;&nbsp;
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/images/RECEIVE1.png" OnClick="ImageButton1_Click" Width="80px" />
                    </td>
                </tr>
            </table>
        </div>      
        <div  class="auto-style2">
            <asp:Label ID="Label3" runat="server" Font-Names="黑体" Font-Size="15px" ForeColor="#44536a" Text="发送的留言信息列表"></asp:Label>
        <div class="auto-style3">
            <asp:GridView ID="GridView2" runat="server" CssClass="GridView" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" Width="885px" Font-Size="12px" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField EditText="查看" HeaderText="操作" SelectText="查看" ShowSelectButton="True" />
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
        </div>
    </form>
</body>
</html>
