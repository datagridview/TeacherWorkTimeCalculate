<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_User_Add.aspx.cs" Inherits="admin9" %>
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
            background-repeat:no-repeat;          
         }
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
                           添加用户<small> add user</small>
                        </h2>
                    </div>
                </div> 
    <form id="form1" runat="server">
        
          <div class="col-lg-1"></div>
                   
                    <div class="col-lg-4"><asp:Label ID="Label5" runat="server" Text="添加用户表格" Font-Names="黑体" Font-Size="Medium" ForeColor="#44536A" TabIndex="1"></asp:Label></div>
                    <div class="col-lg-4"> 
                        <br /> 
                        <asp:Label runat="server" Font-Size="Medium">工号</asp:Label>
                        <asp:TextBox ID="txtNumber" runat="server" Width="200px" CssClass="form-control"/><br />
                         <asp:Label runat="server" Font-Size="Medium">姓名</asp:Label>
                        <asp:TextBox ID="txtName" runat="server" Width="200px" CssClass="form-control"/><br />
                         <asp:Label runat="server" Font-Size="Medium">初始密码</asp:Label>
                        <asp:TextBox ID="txtPwd" runat="server" Width="200px" CssClass="form-control"/><br />
                         <asp:Label runat="server" Font-Size="Medium">权限</asp:Label>
                       <asp:DropDownList ID="DdlAuthority" Width="200px" CssClass="form-control" runat="server">
                             <asp:ListItem>管理员</asp:ListItem>
                             <asp:ListItem>普通用户</asp:ListItem>
                            
                </asp:DropDownList><br />
                        <div style="margin-right:0"><asp:Button ID="Button1" runat="server" Text="确认" CssClass="btn btn-primary" OnClick="Button1_Click"/></div>
                    </div>
                    <div class="col-lg-4"></div>
        &nbsp;   
            
    </form></div>
</body>
</html>
