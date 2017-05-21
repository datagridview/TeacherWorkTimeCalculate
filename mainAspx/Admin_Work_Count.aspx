<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Work_Count.aspx.cs" Inherits="admin5" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style>
            .auto-style11 {
            width: 100%;
            height:35px;
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
            </style>
     <!-- Bootstrap Styles-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.useso.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body style="background-color:#f2f2f2">
     <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="page-header">
                           工作统计<small> Work Count</small>
                        </h2>
                    </div>
                </div> 
    <form id="form1" runat="server">

     <div class="auto-style11">
        <table style="width:100%;">
            <tr style="height:30px;">
                <td style="text-align:center;">&nbsp;</td>
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

        
        

    </form></div>
</body>
</html>