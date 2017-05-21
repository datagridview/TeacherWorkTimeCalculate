<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User_Lesson_Whole.aspx.cs" Inherits="user1" %>

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
           .auto-style3 {
            width:80px;
            height:20px;            
            background-image:url('add.png');
            background-repeat:no-repeat;         
            background-position:center;
        }
           .auto-style4 {
            padding-left:35px;
            padding-top:1.6%;     
        }
            .auto-style6 {
            width: 100%;
            height:530px;
            padding-top:2.2%;
            background-color:#d5dae6;
        }
            .auto-style7 {
            width: 80%;
            height:98%;
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
                     
        .auto-style11 {
             height: 17px;
         }
        .auto-style13 {
            height: 17px;
            width: 93px;
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
            margin-top:4%;
            margin-right:10%;
            margin-left:10%;
            background-color:#eef1f7;         
        }
          .auto-style17 {
            width:80px;
            height:20px;            
            background-image:url('Confirm.png');
            background-repeat:no-repeat;         
            background-position:center;
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
                          课程教学维护<small> Lesson Maintain</small>
                        </h2>
                    </div>
                </div>
    <form id="form2" runat="server">


        <div style="margin:0 150px">
                    <table style="width: 100%;">
                        <tr>
                            <td class="auto-style14">
                                <div >
                                    <asp:Label ID="Label2" runat="server" style="font-family:SimHei;font-size:12px;color:#040404;" ></asp:Label>                                      
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
