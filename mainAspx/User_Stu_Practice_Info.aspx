<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User_Stu_Practice_Info.aspx.cs" Inherits="user2_2_2" %>

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
          .auto-style1  {
            width: 100%;
            height:120px;
            background-color:#eef1f7;
            background-image:url('bg.png');
            border-bottom:0px solid #c7cedc;
        }
           .auto-style2{
            height:57px;
            padding-top:1%;
            margin-left:30px;
        }
           .auto-style4 {
            border-top:10px ;
            height:24px;
        }
            .auto-style6 {
            width: 100%;
            height:530px;
            padding-top:2.2%;
            background-color:#d5dae6;
             margin-left: 0px;
         }
            .auto-style7 {
            width: 80%;
            height:8%;
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
         .auto-style15 {
            width:80px;
            height:20px;
            padding-right:10%;           
        }
         .auto-style16 {
            width: 80%;
            height:35px;
            margin-top:2%;
            margin-right:10%;
            margin-left:10%;
            background-color:#eef1f7;         
        }
          .auto-style17 {
            width:80px;
            height:20px;            
            background-image:url('submit.png');
            background-repeat:no-repeat;         
            background-position:center;
        }
         .auto-style18 {
            margin-top:15%;
              width: 90%;
             height: 30px;
         }
         .auto-style19 {
             height: 30px;
         }
         .auto-style20 {
            margin-top:2px;
            font-family:'SimHei';
            font-size:12px;
            color:#9b9898;
            width:40%;
         }
         .auto-style21 {
             height: 25px;
             border-top:1px solid #d5dae6;
             background-color:#FFFFFF;
         }  
                             
         .auto-style24 {
            
             padding-top: 1%;
             width:75%;
             height: 45px;
         }
                 
         .auto-style25 {
             margin-left: 20px;
         }
                 
         .auto-style26 {
             width: 192px;
             height: 45px;
         }
         .auto-style27 {
             width: 124px;
             height: 19px;
             margin-left: 29px;
             margin-top: 7px;
             margin-bottom: 19px;
         }
                 
         .auto-style28 {
             height: 40px;
             width: 100%
         }
                 
         </style>
</head>
<body>


     <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="page-header">
                          学生指导维护<small> Service Maintain</small>
                        </h2>
                    </div>
                </div>
    <form id="form2" runat="server">

                       &nbsp;  &nbsp; &nbsp; &nbsp;<asp:Label ID="Label11" runat="server" class="auto-style23" style="font-family:SimHei;font-size:medium;color:#040404" Text="毕业论文"></asp:Label> &nbsp;
                        <asp:Label ID="Label15" runat="server" class="auto-style24" style="font-family:SimHei;font-size:medium;color:#0066FF" Text="学生实习"></asp:Label>&nbsp;
        <asp:Label ID="Label12" runat="server" class="auto-style24" style="font-family:SimHei;font-size:medium;color:#040404" Text="项目实践"></asp:Label>


        <br />
        <br />
        <div style="margin:0 150px">

                                                                  
            <asp:Label ID="Label13" runat="server" style="font-family:SimHei;font-size:medium;color:#080a58" Text="" TabIndex="22"></asp:Label>
    
        <div id="myMain" class="col-lg-2">
            
        <div class="form-group">
            <div class="container">
                <div class="row">
                      <div class="col-lg-3"></div>
            <div class="col-lg-3">
            <asp:Label runat="server" Font-Size="Medium">教师姓名</asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="200px" CssClass="form-control"/> 
                <br />
                <asp:Label runat="server" Font-Size="Medium">学号</asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Width="200px" CssClass="form-control"/> 
           
                 <br />
            <asp:Label runat="server" Font-Size="Medium">姓名 </asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Width="200px" CssClass="form-control"/>
                 <br />
              
            </div>
            <div class="col-lg-3">
            <asp:Label runat="server" Font-Size="Medium">年级</asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Width="200px" CssClass="form-control"/>
                 <br />
                 <asp:Label runat="server" Font-Size="Medium">年度</asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" Width="200px" CssClass="form-control"/>
                 <br />
                 <asp:Label runat="server" Font-Size="Medium">总课时</asp:Label>           
            <asp:TextBox ID="TextBox6" runat="server" Width="200px" CssClass="form-control"/>
                </div>
                    <div class="col-lg-3">
                        <asp:Label runat="server" Font-Size="Medium">提交时间</asp:Label>           
                        <asp:TextBox ID="TextBox7" runat="server" Width="200px" CssClass="form-control"/>
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
                    <div class="col-lg-1"><asp:Button ID="Button2" runat="server" Text="提交" OnClick="Button2_Click"  CssClass="btn btn-primary" TabIndex="9"/></div>
                    <div class="col-lg-1"><asp:Button ID="Button1" runat="server" CssClass="btn btn-default" BorderWidth="0px" Text="返回" OnClick="Button1_Click" /> </div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    </div>
                </div>
                  </div>
          
                                                                         

            </div></div>
    </form></div>   


</body>
</html>

