<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" enableEventValidation="false"%>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <link href="assets/css/main.css" rel="stylesheet" media="screen" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="js/jquery-2.2.4.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <title></title>
</head>
<body style="background-image:url('images/back1.jpg'); background-repeat:no-repeat; margin-top: 34px;">
    <div class="container" style="margin-top:150px">

      
        <h2 class="form-signin-heading text-center" style="color:white"><strong>欢迎使用教师工作量统计系统</strong></h2><form class="form-signin"  runat="server" name="form1" method="post">
        <asp:TextBox name="myusername" runat="server" id="TextBox1" type="text" class="form-control" placeholder="请输入用户名"></asp:TextBox><br />
        <asp:TextBox name="mypassword" runat="server" id="TextBox2" type="password" class="form-control" placeholder="请输入密码"></asp:TextBox>
        <asp:TextBox name="mypassword" runat="server" id="TextBox3" type="text" class="form-control" placeholder="请输入验证码"></asp:TextBox><asp:Image ID="Image2" runat="server" style="margin:auto 0"></asp:Image>           
        <asp:Button ID="Button4" runat="server" class="btn btn-lg btn-default btn-block" OnClick="Button2_Click" Text="换一张"/> 
        <asp:Button name="Submit" runat="server" id="Button1" class="btn btn-lg btn-primary btn-block" Text="登录" type="submit" OnClick="Button1_Click"></asp:Button>
      </form>

</div>




</body>
</html>

