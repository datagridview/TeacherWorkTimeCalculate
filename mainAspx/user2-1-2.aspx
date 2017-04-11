<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user2-1-2.aspx.cs" Inherits="user2_1_2" %>

<!DOCTYPE html>
<script runat="server">
</script>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
 <style type="text/css">
          .auto-style1  {
            width: 100%;
            height:120px;
            background-color:#eef1f7;
            background-image:url('bg.png');
            border-bottom:0px solid #c7cedc;
        }
           .auto-style2{
            height:57px;
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
            border-top:10px ;
            height:24px;
        }
            .auto-style6 {
            width: 100%;
            height:530px;
            padding-top:2.2%;
            background-color:#d5dae6;
             margin-left: 0px;
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
                     
         .auto-style14 {
             width: 90%;
               height: 24px;
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
          .auto-style17 {
            width:80px;
            height:20px;            
            background-image:url('submit.png');
            background-repeat:no-repeat;         
            background-position:center;
        }
         .auto-style18 {
            margin-top:15%;
              width: 90%;
             height: 30px;
         }
         .auto-style19 {
             height: 30px;
         }
         .auto-style20 {
            margin-top:2px;
            font-family:'SimHei';
            font-size:12px;
            /*color:#9b9898;*/  color:#040404;
            width:40%;
         }
         .auto-style21 {
             height: 25px;
             border-top:1px solid #d5dae6;
             background-color:#FFFFFF;
         }  
                             
         .auto-style24 {
            
             padding-top: 1%;
             width:75%;
             height: 45px;
         }
                 
         .auto-style25 {
             margin-left: 20px;
             width: 124px;
         }
                 
         .auto-style26 {
             width: 192px;
             height: 45px;
         }
         .auto-style27 {
             width: 124px;
             height: 19px;
             margin-left: 29px;
             margin-top: 7px;
             margin-bottom: 19px;
         }
                 
         .auto-style28 {
             height: 40px;
             width: 100%
         }
                 
         .auto-style29 {
             height: 25px;
         }
         .auto-style30 {
             height: 25px;
             width: 93px;
         }
                 
         .auto-style31 {
             width: 100%;
         }
                 
           .auto-style32 {
               height: 24px;
           }
                 
           .auto-style33 {
               height: 25px;
               width: 87px;
           }
                 
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
        <div style="height:40px"></div>
            <table style="width:100%">
                <tr style="text-align:center;height:40px">
                   <td style="width:25%"><asp:Label ID="Label1" runat="server"  style="font-family:'SimHei';font-size:12px;color:#040404" Text="当前页面：学生指导维护"></asp:Label></td>
                   <td></td>
                </tr>
            </table>
        <table style="width:100%">
              <tr style="text-align:center;height:30px">
                    <td style="width:40%">
                        <asp:Label ID="Label17" runat="server" style="font-family:'SimHei';font-size:12px;color:#0066FF" Text="·毕业论文"></asp:Label>
                        <asp:Label ID="Label18" runat="server" style="font-family:'SimHei';font-size:12px;color:#040404" Text="·学生实习"></asp:Label>
                        <asp:Label ID="Label19" runat="server" style="font-family:'SimHei';font-size:12px;color:#040404" Text="·项目实践"></asp:Label>
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
                                    <asp:Label ID="Label4" runat="server" style="font-family:'SimHei';font-size:12px;color:#040404;" >&nbsp;&nbsp;审核信息表</asp:Label>                                      
                                </div >
                            </td>
                            <td class="auto-style32">
                                <div class="auto-style15">
                                    <asp:Button ID="Button1" runat="server" class="auto-style17" BorderWidth="0px" Text="返回" OnClick="Button1_Click" /> 
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
                                    <asp:Label ID="Label2" runat="server" style="font-family:'SimHei';font-size:12px;color:#040404;" >&nbsp;&nbsp;添加</asp:Label>                                      
                                </div >
                            </td>
                            <td class="auto-style19">
                                <div class="auto-style15">
                                    <asp:Button ID="Button2" runat="server" class="auto-style17" BorderWidth="0px" Text="添加" OnClick="Button2_Click" /> 
                                </div>
                            </td>                            
                        </tr>                   
                    </table>  
                    <div class="auto-style21">
                        <table><tr>
                       <td style ="width:150px"> &nbsp;&nbsp;<asp:Label ID="Label5" runat="server" class="auto-style20">&nbsp;&nbsp;教师姓名&nbsp;&nbsp;&nbsp;&nbsp;</asp:Label></td>
                       <td> <asp:TextBox ID="TextBox1" runat="server" Width="300px" ReadOnly="False"></asp:TextBox></td>
                        </tr></table>
                    </div>
                    <div class="auto-style21">
                         <table><tr>
                        <td style ="width:150px">&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" class="auto-style20">&nbsp;&nbsp;学号：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Label></td>
                         <td><asp:TextBox ID="TextBox2" runat="server" Width="300px" ReadOnly="False"></asp:TextBox></td>
                        </tr></table> 
                    </div>
                    <div class="auto-style21">
                         <table><tr>
                        <td style ="width:150px">&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" class="auto-style20">&nbsp;&nbsp;姓名：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Label></td>
                         <td><asp:TextBox ID="TextBox3" runat="server" Width="300px" ReadOnly="False"></asp:TextBox></td>
                          </tr></table> 
                    </div>
                    <div class="auto-style21">
                         <table><tr>
                       <td style ="width:150px">&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" class="auto-style20">&nbsp;&nbsp;年级：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Label></td>
                        <td> <asp:TextBox ID="TextBox4" runat="server" Width="300px" ReadOnly="False"></asp:TextBox></td>
                          </tr></table> 
                    </div >
                    <div class="auto-style21">
                         <table><tr>
                      <td style ="width:150px"> &nbsp;&nbsp;<asp:Label ID="Label3" runat="server" class="auto-style20">&nbsp;&nbsp;年度：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Label></td>
                        <td> <asp:TextBox ID="TextBox5" runat="server" Width="300px" ReadOnly="False"></asp:TextBox></td>
                          </tr></table> 
                    </div >
                    <div class="auto-style21">
                         <table><tr>
                       <td style ="width:150px"> &nbsp;&nbsp;<asp:Label ID="Label9" runat="server" class="auto-style20">&nbsp;&nbsp;总课时：&nbsp;&nbsp;&nbsp;&nbsp;</asp:Label></td>
                         <td><asp:TextBox ID="TextBox6" runat="server" Width="300px" ReadOnly="False"></asp:TextBox></td>
                          </tr></table> 
                    </div >
                    <div class="auto-style21">
                         <table><tr>
                      <td style ="width:150px"> &nbsp;&nbsp;<asp:Label ID="Label10" runat="server" class="auto-style20">&nbsp;&nbsp;提交时间：&nbsp;&nbsp;</asp:Label></td>
                        <td> <asp:TextBox ID="TextBox7" runat="server" Width="300px" ReadOnly="False"></asp:TextBox></td>
                          </tr></table> 
                    </div >                             
                </div>
        </div>
     
    </form>
</body>
</html>

