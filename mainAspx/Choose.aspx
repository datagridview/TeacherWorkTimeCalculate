<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Choose.aspx.cs" Inherits="Choose" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
  <style type="text/css">
          .auto-style1 {
            margin-top:5px;
            width:1016px;
            height:10px;
            margin-left:auto;
            margin-right:auto;
            background-image:url('zllongline1.png');
            background-repeat:no-repeat;
            background-position:center;
         }
          .auto-style2 { 
            background-image:url('zlloginbg.png');
            background-attachment:fixed;
            background-repeat:no-repeat;
            background-position:center;
         }
          .auto-style3 { 
            margin-top:65px;
            margin-left:auto;
            margin-right:auto;
            width:813px;
            height:447px;
            background-image:url('zlwhitebg111.png');
            background-repeat:no-repeat;         
            background-position:center;
         }
          .auto-style4 { 
            padding-top:0.5%;
            margin-left:12%;
            width:472px;
            height:1px;
            background-image:url('zlshortline.png');
            background-repeat:no-repeat;         
            background-position:center;
         }
          .auto-style5 { 
            padding-top:10%;
            margin-left:19%;
            width:400px;        
            background-position:center;
         }
       
              .auto-style6 {
            margin-top:4%;
          height: 138px;
      }
         
          .auto-style10 {
            width: 233px;
            height: 186px;
        }
                 
      
        .auto-style14 {
            width: 259px;
        }
        .auto-style15 {
            margin-left:20%;
            width:460px;
            height: 286px;
        }

      
       
         .auto-style18 {
            margin-left:20%;
            width:460px; 
        }


        .auto-style19 {
            height: 186px;
        }


        .auto-style22 {
            width: 339px;
            height: 186px;
        }


        .auto-style23 {
          width: 206px;
          height: 186px;
      }


    </style>
    </head>
<body class="auto-style2">
    <form id="form1" runat="server">
    <div class="auto-style3">        
            <table  class="auto-style5">
                <tr>
                    <td>
                        <div  style="font-family:SimHei;font-size:27px;color:#2c2c2c">欢迎登录
                        </div>
                    </td>
                    <td class="auto-style14">
                        <div  style="font-family:SimHei;font-size:20px;color:#2c2c2c">教师工作量统计系统
                        </div>
                    </td>
                </tr>
            </table>      
            <div  class="auto-style4">
            </div>
            
              
             <table class="auto-style15">
                            <tr>                               
                                <td class="auto-style23">
                                       
                                  
                                   
                                       
                                  
                                    </td>                                     
                                <td class="auto-style22">
                                       
                                    <div class="auto-style6">
                    
                                        <asp:Button ID="Button2" runat="server" Text="普通用户" BackColor="#BEC1C6" BorderStyle="None" Height="46px" Width="72px" OnClick="Button2_Click" />

                                   </div>
                                  
                                </td>                                     
                                <td class="auto-style10">
                                     <div class="auto-style6">
                                         <asp:Button ID="Button1" runat="server" Text="管理员" BackColor="#BEC1C6" BorderStyle="None" Height="46px" Width="72px" OnClick="Button1_Click1" />
                                     </div>
                                </td>                                     
                                <td class="auto-style19">                                   
                                      
                                    </td>
                            </tr>                         
                        </table>         
            <table class="auto-style18">
                <tr>
                   
                  
                   
                </tr>
            </table>
    </div>
   
    <div class="auto-style1" aria-hidden="False">
    </div>
    </form>
</body>
</html>

