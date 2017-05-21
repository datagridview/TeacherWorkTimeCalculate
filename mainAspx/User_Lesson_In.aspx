<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User_Lesson_In.aspx.cs" Inherits="user1_1" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
     <style type="text/css">
          .auto-style1 {
            width: 100%;
            height:670px;
            background-color:#eef1f7;
        }
            .auto-style6 {
            width: 100%;
            height:647px;
            padding-top:2.2%;
            background-color:#d5dae6;
        }
            .auto-style7 {
            width: 80%;
            height:40%;
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
            height:27px;
            margin-top:2%;
            margin-right:10%;
            margin-left:10%;
            background-color:#eef1f7;         
        }
          .auto-style18 {
             width: 90%;
             height: 30px;
         }
         .auto-style19 {
             height: 30px;
         }
         .auto-style20 {
            margin-top:2px;
            font-family:SimHei;
            font-size:12px;
            color:#040404;
            width:60%;
         }
         .auto-style21 {
            /* height: 25px;*/
             border-top:1px solid #d5dae6;
             background-color:#FFFFFF;
         }          
          .auto-style111 {
            width: 100%;
            height:120px;
            background-color:#eef1f7;
            background-image:url('bg.png');
            border-bottom:0px solid #c7cedc;
        }   
    </style>
</head>
<body style="height: 705px">






      <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="page-header">
                          课程教学维护<small> Lesson Maintain</small>
                        </h2>
                    </div>
                </div>
    <form id="form2" runat="server">

             

        <div style="margin:0 150px">
<asp:Label ID="Label16" runat="server" style="font-family:SimHei;font-size:medium;color:#080a58" Text="课程教学录入情况" TabIndex="22"></asp:Label>
                                      <asp:GridView ID="GridView1" runat="server" CssClass ="table table-striped table-bordered table-hover dataTable no-footer" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  Font-Size="12px" HorizontalAlign="Center" TabIndex="6">
             <Columns>
                 <asp:CommandField HeaderText="查看" ShowSelectButton="True" />
             </Columns>

                            </asp:GridView>        
               
            
    
          <div id="myMain" class="col-lg-2">
            
        <div class="form-group">
            <div class="container">
                <div class="row">
                      <div class="col-lg-4">
                            <asp:Label runat="server" Font-Size="Medium">课程名称</asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="200px" CssClass="form-control"/> <br />  <asp:Label runat="server" Font-Size="Medium">专业</asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Width="200px" CssClass="form-control"/>  <br /> <asp:Label runat="server" Font-Size="Medium">年级</asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Width="200px" CssClass="form-control"/>  <br /> <asp:Label runat="server" Font-Size="Medium">人数</asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Width="200px" CssClass="form-control"/> 

                      </div>
            <div class="col-lg-4">
            <asp:Label runat="server" Font-Size="Medium">周理论节数</asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" Width="200px" CssClass="form-control"/> 
                <br />
                <asp:Label runat="server" Font-Size="Medium">周实验节数</asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" Width="200px" CssClass="form-control"/> 
           
                 <br />
            <asp:Label runat="server" Font-Size="Medium">周课时</asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" Width="200px" CssClass="form-control"/>
                 <br />
               <asp:Label runat="server" Font-Size="Medium">周数</asp:Label>
            <asp:TextBox ID="TextBox8" runat="server" Width="200px" CssClass="form-control"/>
            </div>
            <div class="col-lg-4">
                 <asp:Label runat="server" Font-Size="Medium">总课时</asp:Label>
            <asp:TextBox ID="TextBox9" runat="server" Width="200px" CssClass="form-control"/>
                <br />
            <asp:Label runat="server" Font-Size="Medium">备注</asp:Label>
            <asp:TextBox ID="TextBox10" runat="server" Width="200px" CssClass="form-control"/>
                 <br />
              
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
                    <div class="col-lg-1"><br /><asp:Button ID="Button3" runat="server" Text="修改" OnClick="Button3_Click"  CssClass="btn btn-primary" TabIndex="9"/></div>
                    <div class="col-lg-1"></div>
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
