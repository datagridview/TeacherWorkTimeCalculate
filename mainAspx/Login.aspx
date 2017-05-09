<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" enableEventValidation="false"%>

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
            background-image:url('hxlongline1.png');
            background-repeat:no-repeat;
            background-position:center;
         }
          .auto-style2 { 
            background-image:url('hxloginbg.png');
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
            background-image:url('hxwhitebg1.png');
            background-repeat:no-repeat;         
            background-position:center;
         }
          .auto-style4 { 
            padding-top:0.5%;
            margin-left:12%;
            width:472px;
            height:1px;
            background-image:url('hxshortline.png');
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
            padding-top:2%;
            margin-left:20%;
            width:460px;        
            background-position:center;
         }
           .auto-style7 { 
            margin-left:20%;
            width:460px;        
            background-position:center;
         }
          .auto-style8 { 
            width:310px;        
         }
          .auto-style10 {
            width: 290px;
            height:37px;
        }
          .auto-style13 {
            margin-top:5px;
            width:350px;
            height:19px;
            margin-left:61%;        
        }

        .auto-style14 {
            width: 259px;
        }
        .auto-style15 {
            margin-left:20%;
            width:460px; 
        }

        .auto-style16 {
            width: 108px;
            height:20px;
        }
        .auto-style17 {
            width: 132px;
        }
         .auto-style18 {
            margin-left:20%;
            width:460px; 
        }

        .auto-style19 {
            width: 218px;
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
            <table class="auto-style6">
                <tr>
                    <td >
                        <asp:Label ID="Label1" runat="server" Text="用户名：" style="font-family:SimHei;font-size:18px;color:#2c2c2c" TabIndex="6"></asp:Label>
                    </td>
                    <td style="width:310px">
                        <asp:TextBox ID="TextBox1" runat="server" class="auto-style8" MaxLength="8" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <table class="auto-style7" >
                <tr>
                    <td >
                        <asp:Label ID="Label2" runat="server" Text="密&amp;nbsp;&amp;nbsp;码：" style="font-family:SimHei;font-size:18px;color:#2c2c2c" TabIndex="7" ></asp:Label>
                    </td>
                    <td style="width:310px">
                        <asp:TextBox ID="TextBox2" runat="server" class="auto-style8" MaxLength="8" TabIndex="1" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                 </table>  
             <table class="auto-style15">
                            <tr>                               
                                <td class="auto-style10">
                                    <table >
                                        <tr>
                                            <td class="auto-style17">
                                                <asp:Label ID="Label3" runat="server"  style="font-family:SimHei;font-size:18px;color:#2c2c2c" TabIndex="8">验证码：</asp:Label>
                                            </td>                                            
                                            <td class="auto-style16">
                                                <asp:TextBox ID="TextBox3" runat="server" Width="140px" MaxLength="4" TabIndex="2"></asp:TextBox>
                                            </td>
                                        </tr>                                       
                                    </table>
                                </td>                                     
                                <td>                                   
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="登录" BorderStyle="None" Width="59px" BackColor="Gray" TabIndex="4" />
                                </td>
                            </tr>                         
                        </table>         
            <table class="auto-style18">
                <tr>
                    <td style="width:132px;"></td>
                    <td class="auto-style19">
                        <asp:Image ID="Image2" runat="server" Width="90px" Height="25px" TabIndex="9" />
                        &nbsp;
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="换一张" BackColor="#BEC1C6" BorderStyle="None" ForeColor="#3366FF" Width="91px" TabIndex="3" />
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="忘记密码" BackColor="#BEC1C6" BorderStyle="None" ForeColor="#3366FF" TabIndex="5" OnClick="Button3_Click" />
                    </td>
                </tr>
            </table>
            
            <br />
    </div>
    <div class="auto-style13"  style="font-family:SimHei;font-size:20px;color:#ffffff">NANJING NORMAL UNIVERSITY</div>
    <div class="auto-style1" aria-hidden="False">
    </div>
    </form>
</body>
</html>

