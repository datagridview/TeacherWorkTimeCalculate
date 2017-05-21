<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Course_Check.aspx.cs" Inherits="Admin_Course_Check" enableEventValidation="false"%>

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

            .auto-style2 {
            width:100%;
            height:120px;
            background-color:#eef1f7;
            background-image:url('bg.png');
            border-bottom:0px solid #c7cedc;
        }
             .auto-style3 {
                height:200px;
                padding-left:60px;
                padding-right:60px;
        }
             .auto-style4 {
                height:300px;
                padding-left:60px;
                padding-right:60px;
        }
            .auto-style117 {
            width:80px;
            height:20px;            
            background-image:url('submit.png');
            background-repeat:no-repeat;         
            background-position:center;
        }  
            .auto-style118 {
                height: 26px;
            }
            .auto-style119 {
                width: 40%;
                height: 26px;
            }
            </style>

</head>
<body style="background-color:#f2f2f2">
  
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="page-header">
                           课程信息审核<small> check the lesson</small>
                        </h2>
                    </div>
                </div>

    <form id="form1" runat="server">
   

        <div style="margin:0 150px">
            <asp:Label ID="Label2" runat="server" style="font-family:SimHei;font-size:12px;color:#080a58" Text="课程信息审核列表" TabIndex="4"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" Height="150px" CssClass="table table-striped table-bordered table-hover dataTable no-footer" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" AllowPaging="True" Font-Size="12px" TabIndex="2" HorizontalAlign="Center">
                <Columns>
                    <asp:CommandField HeaderText="审核" ShowSelectButton="True">
                    </asp:CommandField>
                </Columns>
                   </asp:GridView>

                </div>
                 

       
   
    </form>
                </div>

    
    <!-- jQuery Js -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- Bootstrap Js -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- Metis Menu Js -->
    <script src="assets/js/jquery.metisMenu.js"></script>
    <!-- Morris Chart Js -->
    <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>
    <!-- Custom Js -->
    <script src="assets/js/custom-scripts.js"></script> 
</body>
</html>
