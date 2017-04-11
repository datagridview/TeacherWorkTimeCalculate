<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user3-2-2.aspx.cs" Inherits="user3_2_2" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
            height:7%;
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
    <form id="form1" runat="server">
    <div class="auto-style1">
          <div class="auto-style111">
            <div style="height:40px"></div>
            <table style="width:100%">
                <tr style="height:40px">
                    <td style="text-align:center;width:25%"><asp:Label ID="Label1" runat="server"  style="font-family:SimHei;font-size:12px;color:#040404" Text="当前页面：事务服务维护"></asp:Label></td>
                    <td></td>
                </tr>
            </table>
            <table style="width:100%">
                <tr style="height:39px">
                    <td style="text-align:center;width:30%">
                        <asp:Label ID="Label3" runat="server" class="auto-style23" style="font-family:SimHei;font-size:12px;color:#040404" Text="·素质文化讲座"></asp:Label>
                        <asp:Label ID="Label15" runat="server" class="auto-style24" style="font-family:SimHei;font-size:12px;color:#0066FF" Text="·青年教师指导"></asp:Label>
                    </td>
                    <td></td>
                </tr>
            </table>
        </div>
         <div class="auto-style6">
            <div class="auto-style7">
                <div class="auto-style8">
                    <table style="width: 100%;">
                        <tr>
                            <td class="auto-style14">
                                <div >
                                    <asp:Label ID="Label4" runat="server" style="font-family:SimHei;font-size:12px;color:#040404;" >&nbsp;&nbsp;课程教学审核情况</asp:Label>                                      
                                </div >
                            </td>
                            <td>
                                <div class="auto-style15">
                                    <asp:Button ID="Button1" runat="server" class="auto-style25" BorderWidth="0px" Text="返回" OnClick="Button1_Click" /> 
                                </div>
                            </td>                            
                        </tr>                   
                    </table>                                                                
                </div>
                               
            </div>
                <div class="auto-style16">
                    <table style="width: 100%;">
                        <tr>
                            <td class="auto-style18">
                                <div >
                                </div >
                            </td>
                            <td class="auto-style19">
                                <div class="auto-style15">
                                    <asp:Button ID="Button2" runat="server" class="auto-style25" BorderWidth="0px" Text="确定" OnClick="Button2_Click" /> 
                                </div>
                            </td>                            
                        </tr>                   
                    </table>  
                    <div class="auto-style21">
                        <asp:Label ID="Label5" runat="server" class="auto-style20" Width="100px">&nbsp;&nbsp;教师姓名：</asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Width="300px" ReadOnly="False"></asp:TextBox>
                    </div>
                    <div class="auto-style21">
                        <asp:Label ID="Label6" runat="server" class="auto-style20" Width="100px">&nbsp;&nbsp;青年教师工号：</asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" Width="300px" ReadOnly="False"></asp:TextBox>
                    </div>
                    <div class="auto-style21">
                        <asp:Label ID="Label7" runat="server" class="auto-style20" Width="100px">&nbsp;&nbsp;青年教师姓名：</asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" Width="300px" ReadOnly="False"></asp:TextBox>
                    </div>
                    <div class="auto-style21">
                        <asp:Label ID="Label8" runat="server" class="auto-style20" Width="100px">&nbsp;&nbsp;年度：</asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" Width="300px" ReadOnly="False"></asp:TextBox>
                    </div >
                    <div class="auto-style21">
                        <asp:Label ID="Label2" runat="server" class="auto-style20" Width="100px">&nbsp;&nbsp;提交时间：</asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server" Width="300px" ReadOnly="False"></asp:TextBox>
                    </div >
                    <div class="auto-style21">
                        <asp:Label ID="Label9" runat="server" class="auto-style20" Width="100px">&nbsp;&nbsp;总课时：</asp:Label>
                        <asp:TextBox ID="TextBox6" runat="server" Width="300px" ReadOnly="False"></asp:TextBox>
                    </div >                  
                </div>
        </div>
    </div>
    </form>
</body>
</html>
