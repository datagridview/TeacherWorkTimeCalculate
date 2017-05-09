<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin5.aspx.cs" Inherits="admin5" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style>
            .auto-style1 {
            width:100%; 
            height:657px;
            /*background-image:url('adbg3.png');*/
            /*background-repeat:no-repeat;*/
            font-family:SimHei;
         }
            .auto-style11 {
            width: 100%;
            height:120px;
            background-color:#eef1f7;
            background-image:url('bg.png');
            border-bottom:0px solid #c7cedc;
        }
            .auto-style2 {
               width:100%; 
          
            font-family:SimHei;
                height: 596px;
            }
          .auto-style25{
            width:80px;
            height:20px;            
            background-repeat:no-repeat;         
            background-position:center;
        }    
            .auto-style26
            {
                width: 85%;
                height: 35px;
            }
            .auto-style27
            {
                height: 35px;
            }
            </style>
</head>
<body style="background-color:#f2f2f2">
    <form id="form1" runat="server">
 <div>
     <div class="auto-style11">
        <div style="height:40px"></div>   
        <table style="width:100%;">
            <tr style="height:30px;">
                <td style="text-align:center;"><asp:Label ID="lbldqym" runat="server" Font-Names="黑体" Font-Size="15px" ForeColor="#44536a" Text="当前页面：工作统计"></asp:Label></td>
                <td style="width:400px;text-align:center;"></td>
                <td style="text-align:center;"><asp:TextBox ID="TextBox1" runat="server" Width="101px" Columns="1"></asp:TextBox>&nbsp;<asp:Button ID="Button1" runat="server" Text="确定" class="auto-style25" OnClick="Button1_Click" TabIndex="2" /></td>
            </tr>
        </table>
     </div>
     &nbsp;
     <div class="auto-style2" style="line-height:35px;">
         &nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Font-Names="黑体" Font-Size="15px" ForeColor="#44536A" Text="工作统计列表" TabIndex="3"></asp:Label>
         <br />
         <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Size="12px" AllowPaging="True" HorizontalAlign="Center" TabIndex="4">
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

        </div>
        

    </form>
</body>
</html>