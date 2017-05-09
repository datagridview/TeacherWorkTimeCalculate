<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Thesis_Modify.aspx.cs" Inherits="admin2_1_1_1" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">


         .white{
        width: 100%;
        height:670px;
        background-color:#f2f2f2;
        }
           .auto-style15 {
            width: 95%;
            height:200px;
             margin-bottom:10px;
             margin-left:28px;
        }
        .auto-style1 {
            width: 100%;
            height:120px;
            background-color:#eef1f7;
            background-image:url('bg.png');
            border-bottom:0px solid #c7cedc;
        }
        
                  
          
             .auto-style100 {
              padding-top:1%;
             width: 100%;
             height:20px;
        }         
          
             .auto-style3 {
            width: 95%;
            height:245px;
             margin-top:13px;
             margin-left:28px;
        }
          .auto-style4 {
            width: 100%;
            height:30px;
            background-color:#eef1f7;
             border-bottom:2.5px solid #c7cedc;
            
        }
           .auto-style5 {
            width: 100%;
            height:5px;
            padding-top:9px;
            padding-left:9px;

        }
             .auto-style10 {
            height: 33px;
            width: 183px;
        }
             .auto-style9 {
            height: 23px;
            width: 240px;
        }
             .auto-style101 {
            width: 2753px;
        }
                     
             .auto-style102 {
            width: 2718px;
        }
    
             .auto-style103 {
            width: 80px;
             color:#040404;
        }
 
             .auto-style104
        {
            width: 179px;
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
                           学生指导审核<small> check the lesson</small>
                        </h2>
                    </div>
                </div>
   
    <form id="form1" runat="server">
   
         
         <!-- <div class="auto-style1"> 
            <div style="height:40px"></div>
            <table style="width:100%; height:40px;">
                <tr>
                    <td style="text-align:center;width:25%"><asp:Label ID="Label1" runat="server"  style="font-family:SimHei;margin-top:1px;font-size:12px;height:5px; width: 10px;color:#080a58" Text="当前页面：学生指导审核"></asp:Label></td>
                    <td style="width:60%"></td>
                    <td style="text-align:center"><asp:Button ID="Button2" runat="server" Text="返回" OnClick="Button2_Click" CssClass="auto-style117" TabIndex="1" /></td>             
                </tr>
            </table> -->            
            
         <div class="auto-style100">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" style="font-family:SimHei;font-size:12px;color:#0066FF" Text="·毕业论文" TabIndex="2" ></asp:Label>
                 <asp:Label ID="Label4" runat="server" style="font-family:SimHei;font-size:12px;color:#040404" Text="·指导学生" TabIndex="3"></asp:Label>
                 <asp:Label ID="Label5" runat="server" style="font-family:SimHei;font-size:12px;color:#040404" Text="·项目实践" TabIndex="4"></asp:Label>
             </div>
        <div class="auto-style3"> 
            <div class="auto-style4">
                 <div class="auto-style5">
            <table style="width:100%;">
                         <tr>
                             <td class="auto-style101">    
            <asp:Label ID="Label2" runat="server" style="font-family:SimHei;font-size:12px;color:#080a58" Text="04130101 王某某"></asp:Label></td>
                             <td class="auto-style9" style="text-align:center;width:125px"><asp:Button ID="Button3" runat="server" Text="不通过" CssClass="auto-style117" OnClick="Button3_Click" TabIndex="5" />
                             </td>
                             <td class="auto-style9" style="text-align:center;width:125px"><asp:Button ID="Button4" runat="server" Text="提交" CssClass="auto-style117" OnClick="Button4_Click" TabIndex="6" />
                             </td>
                         </tr>
                     </table>
                </div>
                
                </div>
             &nbsp;
            <asp:GridView ID="GridView1" runat="server" Width="100%" Height="138px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" PageSize="6" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Size="12px" HorizontalAlign="Center" TabIndex="7">
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
            <div class="auto-style4">
             <div class="auto-style5">
                     <table style="width:100%;">
                         <tr>
                             <td class="auto-style102">    
            <asp:Label ID="Label6" runat="server" style="font-family:SimHei;font-size:12px;color:#080a58" Text="当前修改：04130101 王一" TabIndex="8"></asp:Label>
                                 
                             </td>
                            
                             <td class="auto-style9" style="text-align:center;width:125px">
                                 <asp:Button ID="Button5" runat="server" Text="修改" OnClick="Button5_Click"  CssClass="auto-style117" TabIndex="9"/>
                                 
                             </td>
                             <td class="auto-style9" style="text-align:center;width:125px"><asp:Button ID="Button6" runat="server" Text="删除" OnClick="Button6_Click" CssClass="auto-style117" TabIndex="10" /></td>
                         </tr>
                     </table>
                </div>
                </div>
            <table style="width:100%; max-height:100px; font-family:SimHei;font-size:12px; color:#c7cedc ">
                <tr style="height:5px">                     
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; " aria-atomic="True" class="auto-style103"> &nbsp;学号：</td>
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; table-layout: fixed;" aria-atomic="True" class="auto-style10">&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" TabIndex="11"></asp:TextBox>
                         </td>
                        </tr>
                <tr style="height:5px">            
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; " aria-atomic="True" class="auto-style103"> &nbsp;姓名：</td>
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; table-layout: fixed;" aria-atomic="True" class="auto-style10">&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" TabIndex="12"></asp:TextBox>
                         </td>
                        </tr>
                     <tr style="height:5px">
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; " aria-atomic="True" class="auto-style103">&nbsp;总课时：</td>
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; table-layout: fixed;" aria-atomic="True" class="auto-style10">&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" TabIndex="13"></asp:TextBox>
                         </td>
                     
                     </tr>
                   <tr style="height:5px"> 
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; " aria-atomic="True" class="auto-style103"> &nbsp;授导时间：</td>
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; table-layout: fixed;" aria-atomic="True" class="auto-style10">&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server" TabIndex="14"></asp:TextBox>
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

