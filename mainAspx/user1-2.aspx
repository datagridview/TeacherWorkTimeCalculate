<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user1-2.aspx.cs" Inherits="user1_2" %>

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
            height:558px;
            padding-top:2.2%;
            background-color:#d5dae6;
        }
            .auto-style7 {
            width: 80%;
            height:8%;
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
            margin-top:1%;
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
    <form id="form1" runat="server">
    <div class="auto-style1">
        <div class="auto-style111">
            <div style="height:40px"></div>
            <table style="width:100%">
                <tr style="height:40px">
                    <td style="text-align:center;width:25%"><asp:Label ID="Label1" runat="server"  style="font-family:SimHei;font-size:12px;color:#040404" Text="当前页面：课程教学维护"></asp:Label></td>
                    <td></td>
                </tr>
            </table>
        </div>
         <div class="auto-style6">
            <div class="auto-style7">
                <div class="auto-style8">
                    <table style="width: 100%;">
                        <tr>
                            <td class="auto-style14"><div >
                                    <asp:Label ID="Label4" runat="server" style="font-family:SimHei;font-size:12px;color:#040404;" >&nbsp;&nbsp;课程教学审核情况</asp:Label>                                      
                                </div ></td>
                            <td></td>                            
                        </tr>                   
                    </table>                                                                
                </div>                                        
            </div>
                <div class="auto-style16">
                    <table style="width: 100%;">
                        <tr>
                            <td class="auto-style18">
                                <div >
                                    <asp:Label ID="Label2" runat="server" style="font-family:SimHei;font-size:12px;color:#040404;" >&nbsp;&nbsp;当前修改</asp:Label>                                      
                                </div >
                            </td>
                            <td class="auto-style19">
                               <div class="auto-style15">
                                    <asp:Button ID="Button1" runat="server"  BorderWidth="0px" OnClick="Button1_Click" Text="添加" /> 
                                </div>
                            </td>  
                            <td class="auto-style19">
                               <div class="auto-style15">
                                    <asp:Button ID="Button2" runat="server"  BorderWidth="0px" OnClick="Button2_Click" Text="返回"  /> 
                                </div>
                            </td>                           
                        </tr>                   
                    </table>
                      &nbsp;
                    <div class="auto-style21">
                        <asp:Label ID="Label3" runat="server" ForeColor="#040404" class="auto-style20" Width="90px">&nbsp;&nbsp;教师姓名：</asp:Label>
                        <asp:TextBox ID="TextBox11" runat="server" Width="300px" ReadOnly="False"></asp:TextBox>
                    </div>
                    <div class="auto-style21">
                        <asp:Label ID="Label15" runat="server"  class="auto-style20" Width="90px">&nbsp;&nbsp;课程号：</asp:Label>
                    <asp:TextBox ID="TextBox12" runat="server" Width="300px" ReadOnly="False"></asp:TextBox>
                    </div>
                    <div class="auto-style21">
                        <asp:Label ID="Label5" runat="server" class="auto-style20" Width="90px">&nbsp;&nbsp;课程名称：</asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Width="300px" ReadOnly="False"></asp:TextBox>
                    </div>
                    <div class="auto-style21">
                        <asp:Label ID="Label6" runat="server" class="auto-style20" Width="90px">&nbsp;&nbsp;专业：</asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" Width="300px" ReadOnly="False"></asp:TextBox>
                    </div>
                    <div class="auto-style21">
                        <asp:Label ID="Label7" runat="server" class="auto-style20" Width="90px">&nbsp;&nbsp;年级：</asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" Width="300px" ReadOnly="False"></asp:TextBox>
                    </div>
                    <div class="auto-style21">
                        <asp:Label ID="Label8" runat="server" class="auto-style20" Width="90px">&nbsp;&nbsp;学生人数：</asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" Width="300px" ReadOnly="False"></asp:TextBox>
                    </div >
                    <div class="auto-style21">
                        <asp:Label ID="Label9" runat="server" class="auto-style20" Width="90px">&nbsp;&nbsp;周理论节数：</asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server" Width="300px" ReadOnly="False"></asp:TextBox>
                    </div>
                    <div class="auto-style21">
                        <asp:Label ID="Label10" runat="server" class="auto-style20" Width="90px">&nbsp;&nbsp;周实验节数：</asp:Label>
                        <asp:TextBox ID="TextBox6" runat="server" Width="300px" ReadOnly="False"></asp:TextBox>
                    </div>
                    <div class="auto-style21">
                        <asp:Label ID="Label11" runat="server" class="auto-style20" Width="90px">&nbsp;&nbsp;周课时：</asp:Label>
                        <asp:TextBox ID="TextBox7" runat="server" Width="300px" ReadOnly="False"></asp:TextBox>
                    </div>
                    <div class="auto-style21">
                        <asp:Label ID="Label12" runat="server" class="auto-style20" Width="90px">&nbsp;&nbsp;周数：</asp:Label>
                        <asp:TextBox ID="TextBox8" runat="server" Width="300px" ReadOnly="False"></asp:TextBox>
                    </div>
                    <div class="auto-style21">
                        <asp:Label ID="Label13" runat="server" class="auto-style20" Width="90px">&nbsp;&nbsp;总课时：</asp:Label>
                        <asp:TextBox ID="TextBox9" runat="server" Width="300px" ReadOnly="False"></asp:TextBox>
                    </div>
                    <div class="auto-style21">
                        <asp:Label ID="Label14" runat="server" class="auto-style20" Width="90px">&nbsp;&nbsp;课程备注：</asp:Label>
                        <asp:TextBox ID="TextBox10" runat="server" Width="300px" ReadOnly="False"></asp:TextBox>
                    </div>
                    <div class="auto-style21">
                        <asp:Label ID="Label16" runat="server" class="auto-style20" Width="90px">&nbsp;&nbsp;状态：</asp:Label>
                        <asp:TextBox ID="TextBox13" runat="server" Width="300px" ReadOnly="True">未审核</asp:TextBox>
                    </div>
                    <div class="auto-style21">
                        <asp:Label ID="Label17" runat="server" class="auto-style20" Width="90px">&nbsp;&nbsp;提交时间：</asp:Label>
                        <asp:TextBox ID="TextBox14" runat="server" Width="300px" ReadOnly="False"></asp:TextBox>
                    </div>
                </div>
        </div>
    </div>
    </form>
</body>
</html>
