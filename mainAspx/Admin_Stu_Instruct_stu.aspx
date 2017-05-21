<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Stu_Instruct_stu.aspx.cs" Inherits="Admin_Stu_Instruct_stu" %>

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

        .auto-style1 {
            width: 100%;
            height:120px;
            background-color:#eef1f7;
            background-image:url('bg.png');
            border-bottom:0px solid #c7cedc;
        }
        
         .auto-style2 {
            padding-top:2%;
             width: 100%;
             height:40px;
            border-bottom:1px solid #c7cedc;

        }
                  
           .auto-style8 {
            width: 740px;
        }

         
          
             .auto-style6 {
         height: 30px; 
         width: 191px;
        }
         
         
          
             .auto-style6 {
         height: 30px; 
         width: 191px;
        }
         
         
          
             .auto-style7 {
         height: 20px; 
         width: 100px;
         padding-left:49px;
          padding-top:9px;
        }
        
             .auto-style7 {
         height: 20px; 
         width: 100px;
         padding-left:49px;
          padding-top:9px;
        }
                     
             .auto-style100 {
              padding-top:1%;
             width: 100%;
             height:40px;

        }         
                   
           .auto-style3 {
            width: 95%;
            height:206px;
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
          
             .auto-style12 {
            width: 232px;
        }
             .auto-style11 {
            width: 198px;
        }
        .auto-style10 {
            width: 169px;
        }
                  
             .auto-style9 {
            width: 233px;
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

       
     &nbsp;&nbsp;&nbsp;&nbsp;<a href="Admin_Stu_Instruct_Paper.aspx"><asp:Label ID="Label3" runat="server" style="font-family:SimHei;font-size:medium;color:#040404" Text="毕业论文" TabIndex="3"></asp:Label></a>&nbsp;   
                 <a href="Admin_Stu_Instruct_stu.aspx"><asp:Label ID="Label4" runat="server" style="font-family:SimHei;font-size:medium;color:#0066FF" Text="指导学生" TabIndex="4"></asp:Label></a>&nbsp;  
                 <a href="Admin_Stu_Instruct_Project.aspx"><asp:Label ID="Label5" runat="server" style="font-family:SimHei;font-size:medium;color:#040404" Text="项目实践" TabIndex="5"></asp:Label></a>   


        &nbsp;
         <div style="margin:0 150px">
            <asp:Label ID="Label2" runat="server" style="font-family:SimHei;font-size:12px;color:#080a58" Text="指导学生审核列表" TabIndex="5"></asp:Label>
             <br />

           <asp:GridView ID="GridView1" runat="server" CssClass ="table table-striped table-bordered table-hover dataTable no-footer" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Font-Size="12px" HorizontalAlign="Center" TabIndex="6">
               <Columns>
                   <asp:CommandField HeaderText="操作" ShowSelectButton="True" />
               </Columns>
                 </asp:GridView>
             </div>
 
    
    </form> </div>
       
</body>
</html>
