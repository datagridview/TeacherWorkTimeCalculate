<%@ Page Language="C#" AutoEventWireup="true" CodeFile="m_addMessage.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="css/m_addMessage.css" type="text/css"/>
    <style type="text/css">
        .auto-style3 {
             background-image:url(./images/bigrectangle.png);
             background-repeat:no-repeat;
             height:300px;

        }
        .Header {
            background-color:#d5dae6;
        }
         .con{
            background-color:#eef1f7;
        }
        #TextArea1 {
            height: 261px;
            width: 436px;
        }
       .auto-style117 {
            width:80px;
            height:20px;            
            background-image:url('submit.png');
            background-repeat:no-repeat;         
            background-position:center;
        }  
        .auto-style111 {
            width: 100%;
            height:120px;
            background-color:#eef1f7;
            background-image:url('bg.png');
            border-bottom:0px solid #c7cedc;
        }
        .auto-style112{
           height:670px;
           padding-left:20%;
           padding-right:20%;
        }
        .auto-style120
        {
            width: 20%;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style111">
            <div style="height:40px"></div>
            <table style="width:100%">
                <tr style="height:40px">
                    <td style="width:8%"></td>
                    <td style="width:18%"><asp:Label ID="Label1" runat="server" Text="当前页面：添加留言" Font-Size="Small"></asp:Label></td>
                    <td></td>
                    <td style="width:18%"><asp:ImageButton ID="btnBack" runat="server" ImageUrl="~/back.png" CssClass="auto-style117"/></td>
                </tr>
            </table>
   </div>
        &nbsp;
    <div class="auto-style112">
        <table style="width:100%;">
            <tr style="height:40px">
                <td style="text-align:center;width:30%">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/adimg1.png" style="margin-left:5px;margin-top:5px;"/>
                    <asp:Label ID="Label2" runat="server" Text="工号" Font-Size="Small"></asp:Label></td>
                <td style="text-align:center;" class="auto-style120"><asp:ListBox ID="ListBox1" runat="server" Rows="1" DataSourceID="SqlDataSource1" DataTextField="工号" DataValueField="工号" Width="120px"></asp:ListBox></td>
                <td></td>
            </tr>
            <tr style="height:40px">
                <td colspan="3" style="text-align:center"> 
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Teacher %>" SelectCommand="SELECT [工号] FROM [职工表]"></asp:SqlDataSource> 
                </td>
            </tr>
            <tr style="height:20px">
                <td colspan="3"></td>
            </tr>
            <tr style="height:20px">
                <td style="text-align:center;width:30%"><asp:Image ID="Image2" runat="server" ImageUrl="~/images/adimg2.png"/>              
                    <asp:Label ID="Label3" runat="server" Text="姓名" Font-Size="Small"></asp:Label></td>
                <td style="text-align:center" class="auto-style120"><asp:TextBox ID="TextBox4" runat="server" ReadOnly="True" Width="120px"></asp:TextBox></td> 
                <td style="text-align:center"><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="核对姓名" CssClass="auto-style117"/></td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server" EnableTheming="True" GridLines="None" Height="16px" PageSize="1" ShowHeader="False" Width="100%" CellPadding="4" ForeColor="#333333">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </td>
            </tr>
            <tr style="height:20px">
                <td colspan="3"></td>
            </tr>
            <tr style="height:40px">
                <td style="text-align:center">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/images/adimg3.png"/>
                    <asp:Label ID="Label4" runat="server" Text="留言主题" Font-Size="Small" ></asp:Label></td>
                <td style="text-align:center" class="auto-style120"><asp:TextBox ID="TextBox2" runat="server" Width="120px" ></asp:TextBox></td>
                <td></td>
            </tr>
            <tr style="height:20px">
                <td colspan="3"></td>
            </tr>
            <tr style="height:120px">
                <td colspan="3">
                    <asp:TextBox ID="TextBox3" runat="server" Height="100%" Width="100%" BorderStyle="None" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td colspan="3" style="text-align:center">
                    <asp:ImageButton ID="btnSendMsg" runat="server" ImageUrl="~/images/sendMsg.png" Width="450px" OnClick="ImageButton2_Click"  />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html> 
