<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left.aspx.cs" Inherits="left" %>

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
    <title></title>
</head>
<body style="background-color:#09192A">
    <div id="wrapper">
       
     <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav">
                    
                    <li>
                        <a href="Admin_Course_Check.aspx" target="right" style="color:white"><i class="fa fa-dashboard"></i> 日常生活<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="Admin_Course_Check.aspx" class="active" target="right" style="color:white"> 课程信息审核</a>
                            </li>
                            <li>
                                <a href="Admin_Stu_Instruct_Paper.aspx" target="right" style="color:white"> 学生指导审核</a>
                            </li>
                            <li>
                                <a href="Admin_Service_Check.aspx" target="right" style="color:white"> 事务服务审核</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="Admin_Data_Ipmort.aspx" target="right" style="color:white"><i class="fa fa-bar-chart-o"></i> 数据管理<span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                            <li>
                                <a href="Admin_Data_Ipmort.aspx" target="right" style="color:white"> 导入数据</a>
                            </li>
                            <li>
                                <a href="Admin_Work_Count.aspx" target="right" style="color:white"> 工作统计</a>
                            </li>
                            <li>
                                <a href="Admin_Work_ToDevelop.aspx" target="right" style="color:white; top: 3px; left: 0px;"> 工作制定</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="Admin_User_Add.aspx" target="right" style="color:white"><i class="fa fa-fw fa-file"></i> 用户管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="Admin_User_Add.aspx" target="right" style="color:white"> 增加用户</a>
                            </li>
                            <li>
                                <a href="Admin_User_Modify.aspx" target="right" style="color:white"> 修改用户</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                </div>
        </nav>
           
    </div>
    
    <!--<form id="form1" runat="server">
    <div>
    
        <table style="width:100%;height:100%;border-collapse:collapse;">
            <tr >
                <td  class="auto-style1" style="font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 15px; font-weight: normal; font-style: normal; color: #FFFFFF">
                    &nbsp;&nbsp;&nbsp; 欢迎&nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
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
                      <a href="admin1.aspx" target="right"> <asp:Label ID="lblkcxxsh" runat="server" Text="课程信息审核" ForeColor="White"></asp:Label>
                   </a> &nbsp;</td>
            </tr>
              <tr>
                <td >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <a href="admin2-1.aspx" target="right"><asp:Label ID="lblxszdsh" runat="server" Text="学生指导审核" ForeColor="White"></asp:Label>
                       </a> &nbsp;</td>
            </tr>
              <tr>
                <td >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <a href="admin3-1.aspx" target="right"><asp:Label ID="lblswfwsh" runat="server" Text="事务服务审核" ForeColor="White"></asp:Label>
                   </a> &nbsp;</td>
            </tr>
              <tr>
                <td class="auto-style4" >
                    &nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblsjgl" runat="server" Text="数据管理" ForeColor="White"></asp:Label>
                    &nbsp;</td>
            </tr>
              <tr>
                <td >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <a href="admin4.aspx" target="right"> <asp:Label ID="lbldrsj" runat="server" Text="导入数据" ForeColor="White"></asp:Label>
                      </a>  &nbsp;&nbsp;</td>
            </tr>
              <tr>
                <td >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <a href="admin5.aspx" target="right"> <asp:Label ID="lblgztj" runat="server" Text="工作统计" ForeColor="White"></asp:Label>
                   </a> &nbsp;</td>
            </tr>
               
              <tr>
                <td >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <a href="admin6.aspx" target="right"><asp:Label ID="lblgzzd" runat="server" Text="工作制定" ForeColor="White"></asp:Label>
                    </a>&nbsp;</td>
            </tr>
                
              <tr>
                <td >
                    &nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lbllygl" runat="server" Text="留言管理" ForeColor="White"></asp:Label>
                    &nbsp;</td>
            </tr>
                
              <tr>
                <td class="auto-style4" >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <a href="m_checkMessage_get.aspx" target="right"> <asp:Label ID="lblckly" runat="server" Text="查看留言" ForeColor="White"></asp:Label>
                    </a>&nbsp;</td>
            </tr>
                
              <tr>
                <td >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <a href="m_addMessage.aspx" target="right"><asp:Label ID="lbltjly" runat="server" Text="添加留言" ForeColor="White"></asp:Label>
                   </a> &nbsp;</td>
            </tr>
                
              <tr>
                <td >
                    &nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblyhgl1" runat="server" Text="用户管理" ForeColor="White"></asp:Label>
                    &nbsp;</td>
            </tr>
               
              <tr>
                <td >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <a href="admin9.aspx" target="right"> <asp:Label ID="lblxgyh" runat="server" Text="添加用户" ForeColor="White"></asp:Label>
                   </a> &nbsp;</td>
            </tr>
                
              <tr>
                <td >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <a href="admin10.aspx" target="right"> <asp:Label ID="lbltjyh" runat="server" Text="修改用户" ForeColor="White"></asp:Label>
                    </a>&nbsp;</td>
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
                <td > 
        
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            
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


