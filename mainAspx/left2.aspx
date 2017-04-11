<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left2.aspx.cs" Inherits="left2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
    <!--<title></title>
     <style type="text/css">
          .auto-style1 {
            width:100%;
            height:38px;
            background-image:url('adbg1.png');
            background-repeat:no-repeat;
            font-family:黑体;
            font-size:12px;
             height: 38px;
         }
           
         .auto-style3 {
            width:100%;
            height:590px;
            background-image:url('adbg2.png');
            background-repeat:no-repeat;
            font-family:黑体;
            font-size:12px;
         }

         .auto-style4 {
             height: 32px;
         }
         
         /*.auto-style5 {
              width:38px;
              height:38px;
           background-image:url('time.png')
         }*/
             a:link { 
       color:#ffffff;
       text-decoration:none;
                  } 
           a:visited { 
             color:#FFE4B5;
             text-decoration:none; 
                     } 
           a:active { 
             color:#FFFFFF; 
             text-decoration:none; 
                    } 
         </style>-->
</head>
<body style="background-color:#09192A">
    <div id="wrapper">
     <nav class="navbar-default navbar-side" style="color:white" role="navigation">
            <!--<div class="sidebar-collapse">-->
                <ul class="nav" id="main-menu">

                    <li>
                        <a href="index.html" style="color:white"><i class="fa fa-dashboard"></i> 日常生活<span class="fa arrow active"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="user1.aspx" target="right" style="color:white"> 课程信息维护</a>
                            </li>
                            <li>
                                <a href="user2-1-1.aspx" target="right"  style="color:white"> 学生指导维护</a>
                            </li>
                            <li>
                                <a href="user3-1.aspx" target="right"  style="color:white"> 事务服务维护</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="ui-elements.html" style="color:white"><i class="fa fa-bar-chart-o"></i> 数据管理<span class="fa arrow active"></span></a>
                         <ul class="nav nav-second-level">
                            <li>
                                <a href="#" style="color:white"> 导入数据</a>
                            </li>
                            <li>
                                <a href="#" style="color:white"> 工作查询</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="empty.html" style="color:white"><i class="fa fa-fw fa-file"></i> 用户管理<span class="fa arrow active"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#" style="color:white"> 修改信息</a>
                            </li>
                        </ul>
                    </li>
                </ul>

            <!--</div>-->

        </nav>
    </div>
    <!--<form id="form1" runat="server">
    <div>
    
        <table style="width:100%;height:100%;border-collapse:collapse;">
            <tr >
                <td  class="auto-style1" style="font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 15px; font-weight: normal; font-style: normal; color: #FFFFFF">
                    &nbsp;&nbsp;&nbsp; 欢迎&nbsp;<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>

        <table class="auto-style3">
            <tr>
                <td style="font-size: 14px; color: #FFFFFF;" >
                    &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblrcsh" runat="server" Text="日常生活" ForeColor="White"></asp:Label>
                    </td>
            </tr>
              <tr>
                <td >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <a href="user1.aspx" target="right"> <asp:Label ID="lblkcxxsh" runat="server" Text="课程信息维护" ForeColor="White"></asp:Label>
                   </a> &nbsp;</td>
            </tr>
              <tr>
                <td >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <a href="user2-1-1.aspx" target="right"><asp:Label ID="lblxszdsh" runat="server" Text="学生指导维护" ForeColor="White"></asp:Label>
                       </a> &nbsp;</td>
            </tr>
              <tr>
                <td >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <a href="user3-1.aspx" target="right"><asp:Label ID="lblswfwsh" runat="server" Text="事物服务维护" ForeColor="White"></asp:Label>
                   </a> &nbsp;</td>
            </tr>
              <tr>
                <td class="auto-style4" >
                    &nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Label ID="lbllygl0" runat="server" Text="留言管理" ForeColor="White"></asp:Label>
                    </td>
            </tr>
              <tr>
                <td >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <a href="m_checkMessage_get.aspx" target="right"> <asp:Label ID="lblckly0" runat="server" Text="查看留言" ForeColor="White"></asp:Label>
                    </a></td>
            </tr>
              <tr>
                <td >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="m_addMessage.aspx" target="right"><asp:Label ID="lbltjly0" runat="server" Text="添加留言" ForeColor="White"></asp:Label>
                   </a> </td>
            </tr>
               
              <tr>
                <td >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;</td>
            </tr>
                
              <tr>
                <td >
                    &nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblyhgl2" runat="server" Text="用户管理" ForeColor="White"></asp:Label>
                    &nbsp;</td>
            </tr>
                
              <tr>
                <td >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="user6.aspx" target="right">
                        <asp:Label ID="lblxgyh0" runat="server" Text="修改信息" ForeColor="White"></asp:Label>
                   </a> </td>
            </tr>
                
              <tr>
                <td >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="user7.aspx" target="right">
                        <asp:Label ID="lbltjyh0" runat="server" Text="添加密码" ForeColor="White"></asp:Label>
                    </a></td>
            </tr>
                
              <tr>
                <td >
                    &nbsp;&nbsp;&nbsp; </td>
            </tr>
               
              <tr>
                <td >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      &nbsp;</td>
            </tr>
                
              <tr>
                <td >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      &nbsp;</td>
            </tr>
                
              <tr>
                <td >
                    &nbsp;</td>
            </tr>
                
              <tr>
                <td >
                    &nbsp;</td>
            </tr>
                
              <tr>
                <td >
                    &nbsp;</td>
             </tr>
                <tr>
                   
                <td style="font-size: 14px; color: #FFFFFF" >
                    &nbsp;&nbsp;&nbsp;&nbsp; 系统时间&nbsp;</td>
                  
                </tr>
             <tr>
                   
                <td style="font-size: 14px; color: #FFFFFF" >
 <asp:ScriptManager ID="ScriptManager1" runat="server">
                  </asp:ScriptManager>                          
                  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <asp:Timer ID="Timer1" runat="server" Interval="1000">
                    </asp:Timer>
                </ContentTemplate>
                
            </asp:UpdatePanel>
                   </td>
                  
                </tr>
        </table>
       
    </div>
        
    </form>-->

   


</body>
</html>


