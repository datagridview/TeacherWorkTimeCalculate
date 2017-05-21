<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User_Info_Update.aspx.cs" Inherits="User_Info_Update" %>

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
      <style type="text/css">
            .auto-style7 {
            width: 80%;
            height:80%;
            margin-top:0.8%;
            margin-right:10%;
            margin-left:10%;
            background-color:#eef1f7;         
        }
             .auto-style8 {
            padding-top:10px;
            width:100%;
            height: 30px;
        }
                     
         .auto-style14 {
             width: 90%;
         }
           .auto-style15{
       padding-left:25%;
         }
 
               .auto-style29 {
            width: 100%;
            height:50%;
            padding-left:15%;
            padding-right:15%;
          }
                 
          .auto-style30 {
              height: 17px;
          }
                 
          .auto-style43 {
              width: 230px;
              height: 30px;
          }
                 
          .auto-style45 {
              width: 230px;
              height: 30px;
              padding-left:10px;
          }
          .auto-style49 {
              width: 90px;
              height: 36px;
          }
          .auto-style50 {
              height: 36px;
          }
          .auto-style51 {
              width: 90px;
          }
                 
          .auto-style52 {
              height: 30px;
              width: 210px;
          }
          .auto-style53 {
              height: 30px;
              width: 195px;
          }
          .auto-style54 {
              height: 30px;
              width: 123px;
          }
            .auto-style56{
            width: 100%;
            height:30%;
            padding-left:15%;
            padding-right:15%;
          }
                 
          .auto-style55 {
              width: 100px;
          }
                 
          .auto-style57 {
              width: 90px;
              height: 30px;
          }
                 
          .auto-style58 {
              height: 56px;
          }
                 
          .auto-style59 {
              height: 27px;
                width: %;
          }
          .auto-style60 {
              width: 606px;
          }
          .auto-style61 {
              height: 27px;
              width: 56%;
          }
                 
          .auto-style62 {
              height: 27px;
              width: 10%;
          }
                 
          .auto-style63 {
              width: 123px;
          }
          </style>
</head>
<body>    
    <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="page-header">
                           修改个人信息<small> Update the Infomation</small>
                        </h2>
                    </div>
                </div>
    <form id="form1" runat="server">
        <div id="myMain" style="margin:0px 150px" class="col-lg-2">
        <div class="form-group">
            <div class="container">
                <div class="row">
            <div class="col-lg-4">
            <asp:Label runat="server" Font-Size="Medium">工号</asp:Label>
            <asp:TextBox ID="TextBoxNum" runat="server" Width="200px" CssClass="form-control" ReadOnly="true"/> 
                <br />
                <asp:Label runat="server" Font-Size="Medium">性别</asp:Label>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
        <asp:ListItem Selected="True" Value="1">男&nbsp;&nbsp;&nbsp;</asp:ListItem>
        <asp:ListItem Value="2">女</asp:ListItem>
    </asp:RadioButtonList>
           
                 <br />
            <asp:Label runat="server" Font-Size="Medium">出生年月</asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" Width="200px" CssClass="form-control"/>
                 <br />
                 <asp:Label runat="server" Font-Size="Medium">联系方式</asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Width="200px" CssClass="form-control"/>
            </div>
            <div class="col-lg-4">
            <asp:Label runat="server" Font-Size="Medium">姓名</asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" Width="200px" CssClass="form-control"  ReadOnly="true"/>
                 <br />
                 <asp:Label runat="server" Font-Size="Medium">职称</asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="200px" CssClass="form-control"/>
                 <br />
                 <asp:Label runat="server" Font-Size="Medium">邮箱</asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Width="200px" CssClass="form-control"/>  
                 <br />
                <asp:Label runat="server" Font-Size="Medium">院系</asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Width="200px" CssClass="form-control"/>
                </div>
            <div class="col-lg-4">
           <asp:Label runat="server" Font-Size="Medium">照片</asp:Label>
                <asp:Image ID="Image1" runat="server" width="200px" Height="200px" CssClass="form-control" Style="padding:0"/>
                <asp:FileUpload ID="FileUpload1" CssClass="btn btn-default" runat="server" Width="200px"/>
               
                </div>
                </div>
            </div>
        </div>
          <div class="form_group">
               <div class="container">
                <div class="row">
                    <div class="col-lg-6">
        <asp:Label runat="server" Font-Size="Medium">简介</asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" class="form-control" rows="3"  ></asp:TextBox>
                        <br />
                        <asp:Button ID="Button1" CssClass="btn btn-default" runat="server" Text="提交" />
                        <asp:Button ID="Button30" CssClass="btn btn-default" runat="server" Text="重置" />
                    </div>
                    </div>
                  
                   </div>
              </div>
             
        </div>   
        
     
    </form></div>
</body>
</html>
