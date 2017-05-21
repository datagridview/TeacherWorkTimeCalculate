<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User_Pwd_update.aspx.cs" Inherits="User_Pwd_update" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title> <!-- Bootstrap Styles-->
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
            height:77%;
            margin-top:0.8%;
            margin-right:10%;
            margin-left:10%;
                 
        }
             .auto-style8 {
            padding-top:10px;
            width:100%;
            height: 0px;
             margin-top: 0px;
         }
                     
         .auto-style24 {
             width: 747px;
             height: 23px;
         }
                                      
         .auto-style26 {
          
             
             width: 100%;
             height: 292px;
             }
           .auto-style27 {
            background-color:#FFFFFF;
         }  
            
                             
         .auto-style29 {
             width: 550px;
              
         }
                              
                  .auto-style3{
              margin-top:0%;
             
         }
                      
         </style>
</head>
<body>
    <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="page-header">
                           修改密码<small> Update the Password</small>
                        </h2>
                    </div>
                </div>
    <form id="form1" runat="server">


                     <div class="row">
            <div class="col-lg-4">
                </div>
                       
                       
            <div class="col-lg-4">
                                    <asp:Label runat="server" Font-Size="Medium">原密码</asp:Label>
                                    <asp:TextBox ID="TextBox1" runat="server" Width="200px" CssClass="form-control"/> 

                                  <asp:Label runat="server" Font-Size="Medium">新密码</asp:Label>
                                    <asp:TextBox ID="TextBox2" runat="server" Width="200px" CssClass="form-control"/> 
                       
                                  <asp:Label runat="server" Font-Size="Medium">确认密码</asp:Label>
                                    <asp:TextBox ID="TextBox3" runat="server" Width="200px" CssClass="form-control"/> 
                    <br />


                               
                                  <asp:Button ID="Button1" CssClass="btn btn-primary" style="background-color:#09192A" Text="确认" runat="server" OnClick="Button1_Click" Font-Size="Large" />
                                  </div>
                       
                      
            <div class="col-lg-4">
                </div>
                        
                         </div>
           

       
    
    </form> </div>
</body>
</html>

