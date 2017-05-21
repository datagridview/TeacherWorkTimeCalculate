<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User_YT_Info.aspx.cs" Inherits="User_YT_Info" %>

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
            .auto-style6 {
            width: 100%;
            height:530px;
            padding-top:2.2%;
            background-color:#d5dae6;
        }
            .auto-style7 {
            width: 80%;
            height:93%;
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


                       &nbsp;&nbsp;&nbsp; <a href="User_Lecture.aspx"> <asp:Label ID="Label2" runat="server" class="auto-style23" style="font-family:SimHei;font-size:medium;color:#040404" Text="素质文化讲座"></asp:Label></a>&nbsp;
                        <a href="User_YT_Info.aspx"><asp:Label ID="Label5" runat="server" class="auto-style24" style="font-family:SimHei;font-size:medium;color:#0066FF" Text="青年教师指导"></asp:Label></a> 

        <br /> <br />


        <div style="margin:0 150px">
                    <table style="width: 100%;">
                        <tr>
                            <td class="auto-style14">
                                <div >
                                    <asp:Label ID="Label6" runat="server" style="font-family:SimHei;font-size:12px;color:#040404;" >&nbsp;&nbsp;青年教师指导</asp:Label>                                      
                                </div >
                            </td>
                            <td>
                                <div class="auto-style15">
                                    <asp:Button ID="Button3" runat="server" class="auto-style25" BorderWidth="0px" Text="查看明细" OnClick="Button1_Click" Font-Size="12px" /> 
                                </div>
                            </td>  
                            <td></td>
                            <td>
                                <div class="auto-style15">
                                    <asp:Button ID="Button4" runat="server" class="auto-style25" BorderWidth="0px" Text="添加记录" OnClick="Button2_Click" Font-Size="12px" /> 
                                </div>
                            </td>                            
                        </tr>                   
                    </table>                                                                
               
           <asp:GridView ID="GridView1" runat="server" CssClass ="table table-striped table-bordered table-hover dataTable no-footer" Font-Size="12px" HorizontalAlign="Center" TabIndex="6">
                    </asp:GridView>         
            </div>
               
        

    </form> </div> 

</body>
</html>

