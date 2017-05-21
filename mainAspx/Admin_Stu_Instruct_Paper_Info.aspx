<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Stu_Instruct_Paper_Info.aspx.cs" Inherits="admin2_1_1_1" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">


         .white{
        width: 100%;
        height:670px;
        background-color:#f2f2f2;
        }
           .auto-style15 {
            width: 95%;
            height:200px;
             margin-bottom:10px;
             margin-left:28px;
        }
                
                  
          
             .auto-style100 {
              padding-top:1%;
             width: 100%;
             height:20px;
        }         
          
             .auto-style3 {
            width: 95%;
            height:245px;
             margin-top:13px;
             margin-left:28px;
        }
          .auto-style4 {
            width: 100%;
            height:30px;
            background-color:#eef1f7;
             border-bottom:2.5px solid #c7cedc;
            
        }
           .auto-style5 {
            width: 100%;
            height:5px;
            padding-top:9px;
            padding-left:9px;

        }
             .auto-style10 {
            height: 33px;
            width: 183px;
        }
             .auto-style9 {
            height: 23px;
            width: 240px;
        }
             .auto-style101 {
            width: 2753px;
        }
                     
             .auto-style102 {
            width: 2718px;
        }
    
             .auto-style103 {
            width: 80px;
             color:#040404;
        }
 
             .auto-style117 {
            width:80px;
            height:20px;            
            background-image:url('submit.png');
            background-repeat:no-repeat;         
            background-position:center;
        }         
             </style>
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
</head>
<body style="background-color:#f2f2f2">
    <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="page-header">
                           学生指导审核<small> check the lesson</small>
                        </h2>
                    </div>
                </div>
   
    <form id="form1" runat="server">
   
                  
            
         <div class="auto-style100">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" style="font-family:SimHei;font-size:medium;color:#0066FF" Text=" 毕业论文" TabIndex="2" ></asp:Label>&nbsp;
                 <asp:Label ID="Label4" runat="server" style="font-family:SimHei;font-size:medium;color:#040404" Text="指导学生" TabIndex="3"></asp:Label>&nbsp;
                 <asp:Label ID="Label5" runat="server" style="font-family:SimHei;font-size:medium;color:#040404" Text="  项目实践" TabIndex="4"></asp:Label>
             </div>
        <br />
      
        <div style="margin:0 150px">
             &nbsp;
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-hover dataTable no-footer" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" PageSize="6" Font-Size="12px" HorizontalAlign="Center" TabIndex="7">
                <Columns>
                    <asp:CommandField HeaderText="操作" ShowSelectButton="True" />
                </Columns>
                               
                               
                         </asp:GridView>
            </div>
        
            

                             
                                 
          <div id="myMain" style="margin:0px 100px" class="col-lg-2">
            <asp:Label ID="Label6" runat="server" style="font-family:SimHei;font-size:medium;color:#080a58" Text="04130101 当前修改：" TabIndex="22"></asp:Label>
        <div class="form-group">
            <div class="container">
                <div class="row">
                      <div class="col-lg-3"></div>
            <div class="col-lg-3">
            <asp:Label runat="server" Font-Size="Medium">学号</asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="200px" CssClass="form-control"/> 
                <br />
                <asp:Label runat="server" Font-Size="Medium">姓名</asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Width="200px" CssClass="form-control"/> 
           
                 <br />
            <asp:Label runat="server" Font-Size="Medium">授导时间</asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Width="200px" CssClass="form-control"/>
                 <br />
              
            </div>
            <div class="col-lg-3">
            <asp:Label runat="server" Font-Size="Medium">总课时</asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Width="200px" CssClass="form-control"/>
                 <br />
                 <asp:Label runat="server" Font-Size="Medium">当前状态</asp:Label>           
              <asp:DropDownList ID="DropDownList1" Width="200px" CssClass="form-control" runat="server">
                             <asp:ListItem>已通过</asp:ListItem>
                             <asp:ListItem>经修改通过</asp:ListItem>
                             <asp:ListItem>退回</asp:ListItem>
                </asp:DropDownList>
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
                    <div class="col-lg-1"><asp:Button ID="Button5" runat="server" Text="提交" OnClick="Button5_Click"  CssClass="btn btn-primary" TabIndex="9"/></div>
                    <div class="col-lg-1"><asp:Button ID="Button6" runat="server" Text="删除" OnClick="Button6_Click" CssClass="btn btn-default" TabIndex="10" /></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    </div>
                </div>
            </div>
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

