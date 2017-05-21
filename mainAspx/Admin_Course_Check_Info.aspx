<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Course_Check_Info.aspx.cs" Inherits="admin1_1_1" %>

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

             <div class="auto-style5">
                     <table style="width:100%;">
                         <tr>
                             <td class="auto-style16">    
            <asp:Label ID="Label2" runat="server" style="font-family:SimHei;font-size:medium;color:#080a58" Text="04130101 王某某" TabIndex="21"></asp:Label></td>
                         </tr>
                     </table>           
                </div>

             &nbsp;
            <asp:GridView ID="GridView1" runat="server" Height="60px" Width="100%" CssClass="table table-striped table-bordered table-hover dataTable" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" PageSize="6" Font-Size="12px" HorizontalAlign="Center" TabIndex="2">
                <Columns>
                    <asp:CommandField HeaderText="操作" ShowSelectButton="True" />
                </Columns>
                             </asp:GridView>

        <div id="myMain" style="margin:0px 100px" class="col-lg-2">
            <asp:Label ID="Label3" runat="server" style="font-family:SimHei;font-size:medium;color:#080a58" Text="04130101 当前修改：" TabIndex="22"></asp:Label>
        <div class="form-group">
            <div class="container">
                <div class="row">
            <div class="col-lg-4">
            <asp:Label runat="server" Font-Size="Medium">课程名称</asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="200px" CssClass="form-control"/> 
                <br />
                <asp:Label runat="server" Font-Size="Medium">人数</asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" Width="200px" CssClass="form-control"/> 
           
                 <br />
            <asp:Label runat="server" Font-Size="Medium">周课时</asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" Width="200px" CssClass="form-control"/>
                 <br />
              
            </div>
            <div class="col-lg-4">
            <asp:Label runat="server" Font-Size="Medium">专业</asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Width="200px" CssClass="form-control"/>
                 <br />
                 <asp:Label runat="server" Font-Size="Medium">周理论节数</asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" Width="200px" CssClass="form-control"/>
                 <br />
                 <asp:Label runat="server" Font-Size="Medium">总课时</asp:Label>
            <asp:TextBox ID="TextBox8" runat="server" Width="200px" CssClass="form-control"/>  
                 <br />
                </div>
            <div class="col-lg-4">
           <asp:Label runat="server" Font-Size="Medium">年级</asp:Label>
                 <asp:TextBox ID="TextBox3" runat="server" Width="200px" CssClass="form-control"/> <br />
                      <asp:Label runat="server" Font-Size="Medium">周实验节数</asp:Label>
               
                 <asp:TextBox ID="TextBox6" runat="server" Width="200px" CssClass="form-control"/><br />
                <asp:Label runat="server" Font-Size="Medium">当前状态</asp:Label>
                
                <asp:DropDownList ID="DropDownList1" Width="200px" CssClass="form-control" runat="server">
                             <asp:ListItem>已通过</asp:ListItem>
                             <asp:ListItem>经修改通过</asp:ListItem>
                             <asp:ListItem>退回</asp:ListItem>
                </asp:DropDownList>
                </div>
                </div>
            </div>
        </div>
              <div class="form-group">
            <div class="container">
                <div class="row">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"><asp:Button ID="btnSubmit" runat="server" Text="提交" OnClick="btnSubmit_Click"  CssClass="btn btn-primary" TabIndex="9"/></div>
                    <div class="col-lg-1"><asp:Button ID="Button5" runat="server" Text="删除" OnClick="Button5_Click" CssClass="btn btn-default" TabIndex="10" /></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    </div>
                </div>
            </div>
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
