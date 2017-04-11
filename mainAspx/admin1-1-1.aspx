<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin1-1-1.aspx.cs" Inherits="admin1_1_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
<body>
     <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="page-header">
                           课程信息审核<small> check the lesson</small>
                        </h2>
                    </div>
                </div>
    <form id="form1" runat="server">
    
    <!--<div  class="white">    
          <div class="auto-style1"> 
            <div style="height:40px"></div>  
            <table style="width:100%; height:40px;">
                <tr>
                    <td class="auto-style8"> &nbsp;&nbsp;<asp:Label ID="Label1" runat="server"  style="font-family:SimHei;margin-top:1px;font-size:12px;height:5px; width: 10px;color:#080a58" Text="当前页面：课程信息审核"></asp:Label></td>                           
                </tr>  
            </table>    
         </div>-->
        <div class="auto-style3"> 
            <div class="auto-style4">
             <div class="auto-style5">
                     <table style="width:100%;">
                         <tr>
                             <td class="auto-style16">    
            <asp:Label ID="Label2" runat="server" style="font-family:SimHei;font-size:12px;color:#080a58" Text="04130101 王某某" TabIndex="21"></asp:Label></td>
                             <td class="auto-style9" style="width:125px;text-align:center" ><asp:Button ID="Button1" runat="server" CssClass="auto-style117" OnClick="Button1_Click" Text="提交" />
                                 </td>
                             <td class="auto-style9" style="width:125px;text-align:center" ><asp:Button ID="Button2" CssClass="auto-style117" runat="server" Text="返回" OnClick="Button2_Click" TabIndex="1" />
                                 </td>
                         </tr>
                     </table>           
                </div>
                </div>
             &nbsp;
            <asp:GridView ID="GridView1" runat="server" Height="60px" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" PageSize="6" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Size="12px" HorizontalAlign="Center" TabIndex="2">
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
                <div class="auto-style15"> 
             <div class="auto-style5">
                     <table style="width:100%;">
                         <tr>
                             <td class="auto-style16"> 
            <asp:Label ID="Label3" runat="server" style="font-family:SimHei;font-size:12px;color:#080a58" Text="04130101 当前修改：" TabIndex="22"></asp:Label></td>
                             <td class="auto-style118" style="text-align:center;width:125px" >
                                 <asp:Button ID="Button5" runat="server" Text="删除" OnClick="Button5_Click" CssClass="auto-style117" TabIndex="3"/></td>      
                             <td class="auto-style9" style="text-align:center;width:125px" >
                                 <asp:Button ID="Button3" runat="server" Text="修改" OnClick="Button3_Click" CssClass="auto-style117" TabIndex="4" /></td>
                         </tr>
                     </table>
                </div>
            <table style="width:100%; max-height:100px; font-family:SimHei;font-size:12px;">
                     <tr>
                    
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; " aria-atomic="True" class="auto-style17">&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="课程名称：" TabIndex="5"></asp:Label>
                             
                         </td>
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; " aria-atomic="True" class="auto-style10">&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" TabIndex="6"></asp:TextBox>
                         </td>
                     
                     </tr>
                   <tr style="height:5px">
                        
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; " aria-atomic="True" class="auto-style17">&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="专业：" TabIndex="7"></asp:Label>
                         </td>
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; table-layout: fixed;" aria-atomic="True" class="auto-style10">&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" TabIndex="8"></asp:TextBox>
                         </td>
                    
                        </tr>
                    <tr style="height:5px">
                        
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; " aria-atomic="True" class="auto-style17">&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="年级：" TabIndex="9"></asp:Label>
                         </td>
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; table-layout: fixed;" aria-atomic="True" class="auto-style10">&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" TabIndex="10"></asp:TextBox>
                         </td>
                     
                    </tr>
                 <tr style="height:5px">
                        
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; " aria-atomic="True" class="auto-style17">&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="人数：" TabIndex="11"></asp:Label>
                         </td>
                        
                      <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; table-layout: fixed;" aria-atomic="True" class="auto-style10">&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server" TabIndex="12"></asp:TextBox>
                         </td>
                     </tr>
                   <tr style="height:5px">
                        
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; " aria-atomic="True" class="auto-style17">&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text="周理论节数：" TabIndex="13"></asp:Label>
                         </td>
                        <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; table-layout: fixed;" aria-atomic="True" class="auto-style10">&nbsp;&nbsp;<asp:TextBox ID="TextBox5" runat="server" TabIndex="14"></asp:TextBox>
                         </td>
                     </tr>
                    <tr style="height:5px">
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; " aria-atomic="True" class="auto-style17">&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Text="周实验节数：" TabIndex="15"></asp:Label>
                         </td>
                        
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; table-layout: fixed;" aria-atomic="True" class="auto-style10">&nbsp;&nbsp;<asp:TextBox ID="TextBox6" runat="server" TabIndex="16"></asp:TextBox>
                         </td>
                     </tr>
              <tr>
                      <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; " aria-atomic="True" class="auto-style17">&nbsp;&nbsp;<asp:Label ID="Label10" runat="server" Text="周课时：" TabIndex="17"></asp:Label>
                      </td>
                        
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; " aria-atomic="True" class="auto-style18">&nbsp;&nbsp;<asp:TextBox ID="TextBox7" runat="server" TabIndex="18"></asp:TextBox>
                      </td>
                       
              </tr>
                <tr style="height:5px">
                      <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; " aria-atomic="True" class="auto-style17">&nbsp;&nbsp;<asp:Label ID="Label11" runat="server" Text="总课时：" TabIndex="19"></asp:Label>
                      </td>
                        
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; table-layout: fixed;" aria-atomic="True" class="auto-style10">&nbsp;&nbsp;<asp:TextBox ID="TextBox8" runat="server" TabIndex="20"></asp:TextBox>
                      </td>
                       
              </tr>
                 </table>
            </div>
   
   

       
    
    </form>
   
 </div>
          <!-- jQuery Js -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- Bootstrap Js -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- Metis Menu Js -->
    <script src="assets/js/jquery.metisMenu.js"></script>
    <!-- Morris Chart Js -->
    <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>
    <!-- Custom Js -->
    <script src="assets/js/custom-scripts.js"></script>  
    
</body>
</html>
