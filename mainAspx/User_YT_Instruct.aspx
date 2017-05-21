<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User_YT_Instruct.aspx.cs" Inherits="User_YT_Instruct" %>

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
          .auto-style1 {
            width: 100%;
            height:70px;
            background-color:#eef1f7;
        }
           .auto-style2 {
            height:30px;
            padding-top:1%;
            margin-left:30px;
        }
            .auto-style6 {
            width: 100%;
            height:530px;
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
            height:35px;
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
            width:40%;
         }
         .auto-style21 {
             height: 25px;
             border-top:1px solid #d5dae6;
             background-color:#FFFFFF;
         } 
          .auto-style22 {
            border-top:1px solid #d5dae6;
            height:26px;
        }
           .auto-style23 {
            padding-left:30px;
            padding-top:1%;
        }
            .auto-style24 {
            padding-left:20px;
            padding-top:1%;
        }    
            .auto-style25 {
            width:80px;
            height:20px;            
            background-repeat:no-repeat;         
            background-position:center;
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
<body>





        <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="page-header">
                          事务服务维护<small> Service Maintain</small>
                        </h2>
                    </div>
                </div>
    <form id="form2" runat="server">
                         &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" class="auto-style23" style="font-family:SimHei;font-size:medium;color:#040404" Text="素质文化讲座"></asp:Label>&nbsp;&nbsp;
                         <asp:Label ID="Label7" runat="server" class="auto-style24" style="font-family:SimHei;font-size:medium;color:#0066FF" Text="青年教师指导"></asp:Label>

        <br /><br />
        <div style="margin:0 150px">

                    <table style="width: 100%;">
                        <tr>
                            <td class="auto-style14">
                                <div >
                                    <asp:Label ID="Label9" runat="server" style="font-family:SimHei;font-size:12px;color:#040404;" >&nbsp;&nbsp;素质文化讲座审核状况</asp:Label>                                      
                                </div >
                            </td>
                            <td>
                                <div class="auto-style15">
                                    <asp:Button ID="Button3" runat="server" class="auto-style25" BorderWidth="0px" Text="返回" OnClick="Button1_Click" /> 
                                </div>
                            </td>                            
                        </tr>                   
                    </table>                                                                
              
               <asp:GridView ID="GridView1" runat="server" CssClass ="table table-striped table-bordered table-hover dataTable no-footer" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  Font-Size="12px" HorizontalAlign="Center" TabIndex="6">
             <Columns>
                 <asp:CommandField HeaderText="查看" ShowSelectButton="True" />
             </Columns>

                            </asp:GridView>                             
  </div>
                 <div id="myMain" style="margin:0px 100px" class="col-lg-2">
            <asp:Label ID="Label10" runat="server" style="font-family:SimHei;font-size:medium;color:#080a58" Text="" TabIndex="22"></asp:Label>
        <div class="form-group">
            <div class="container">
                <div class="row">
                      <div class="col-lg-3"></div>
            <div class="col-lg-3">
            <asp:Label runat="server" Font-Size="Medium">青年教师姓名</asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="200px" CssClass="form-control"/> 
                <br />
                <asp:Label runat="server" Font-Size="Medium">总课时</asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Width="200px" CssClass="form-control"/> 
           
                 <br />
            </div>
            <div class="col-lg-3">
            <asp:Label runat="server" Font-Size="Medium">年度</asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Width="200px" CssClass="form-control"/>
                 <br />
               
                </div>
                    <div class="col-lg-3"></div>
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
                    <div class="col-lg-1"><asp:Button ID="Button4" runat="server" Text="修改" OnClick="Button2_Click"  CssClass="btn btn-primary" TabIndex="9"/></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    </div>
                </div>
            </div>
               </div>

              
    </form></div>






</body>
</html>
