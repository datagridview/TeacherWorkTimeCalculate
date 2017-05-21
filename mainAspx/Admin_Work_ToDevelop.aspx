<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Work_ToDevelop.aspx.cs" Inherits="admin6_1" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style>
             .auto-style3 {
                height:120px;
                padding-left:60px;
                padding-right:60px;
            }
              .auto-style4 {
                height:125px;
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
                           工作制定<small> Work To Develop
                               </small>
                        </h2>
                    </div>
                </div> 
    <form id="form1" runat="server">
        &nbsp;
    <div class="auto-style3">
             <table style="width:100%">
                 <tr>
                     <td style="width:25%"></td>
                     <td style="text-align:center"><asp:Label ID="Label3" runat="server" Font-Names="黑体" Font-Size="15px" ForeColor="#44536A" Text="工作制定列表" TabIndex="1"></asp:Label></td>
                     <td></td>
                     <td style="width:25%"></td>
                 </tr>
                 <tr>
                     <td ></td>
                     <td style="text-align:center"><asp:Label ID="Label2" runat="server" Text="上传文件：" Font-Size="12px" TabIndex="2"></asp:Label></td>
                     <td style="text-align:center"><asp:FileUpload ID="FileUpload1" runat="server" TabIndex="3" /></td>
                     <td></td>
                 </tr>
                 <tr>
                     <td></td>
                     <td style="text-align:center"><asp:Label ID="Label4" runat="server" Font-Size="12px"  Text="文件成分：" TabIndex="4"></asp:Label></td>
                     <td style="text-align:center">
                         <asp:DropDownList ID="DropDownList1" runat="server" Width="221px" TabIndex="5">
                             <asp:ListItem>青年教师指导表</asp:ListItem>
                             <asp:ListItem>素质文化讲座表</asp:ListItem>
                             <asp:ListItem>工作量统计表</asp:ListItem>
                             <asp:ListItem>毕业论文表</asp:ListItem>
                             <asp:ListItem>授导学生表</asp:ListItem>
                             <asp:ListItem>项目实践表</asp:ListItem>
                         </asp:DropDownList>
                     </td>
                     <td></td>
                 </tr>
                 <tr>
                     <td></td>
                     <td style="text-align:center"><asp:Label ID="Label5" runat="server" Font-Size="12px"  Text="所属类别：" TabIndex="6"></asp:Label></td>
                     <td style="text-align:center">
                         <asp:DropDownList ID="DropDownList2" runat="server" Width="220px" TabIndex="7">
                             <asp:ListItem>事务服务</asp:ListItem>
                             <asp:ListItem>学生指导</asp:ListItem>
                         </asp:DropDownList>
                     </td>
                     <td><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确定" CssClass="auto-style117" TabIndex="8"/></td>
                 </tr>
             </table>
    </div>
    <div class="auto-style4">
            <asp:GridView ID="GridView1" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Size="12px" TabIndex="9">
                <AlternatingRowStyle BackColor="White" />
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
    
    </form></div>
</body>
</html>

