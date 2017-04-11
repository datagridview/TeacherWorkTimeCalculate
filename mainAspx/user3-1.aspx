<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user3-1.aspx.cs" Inherits="user3_1" %>

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
            height:530px;
            padding-top:2.2%;
            background-color:#d5dae6;
        }
            .auto-style7 {
            width: 80%;
            height:91%;
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
            background-image:url('back.png');
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
                    <td style="text-align:center;width:25%"><asp:Label ID="Label1" runat="server"  style="font-family:SimHei;font-size:12px;color:#040404" Text="当前页面：事务服务维护"></asp:Label> </td>
                    <td></td>
                </tr>
            </table>
            <table style="width:100%">
                <tr style="height:39px">
                    <td style="text-align:center;width:30%">
                        <a href="user3-1.aspx"> <asp:Label ID="Label3" runat="server" class="auto-style23" style="font-family:SimHei;font-size:12px;color:#0066FF" Text="·素质文化讲座"></asp:Label></a>
                        <a href="user3-2.aspx"><asp:Label ID="Label15" runat="server" class="auto-style24" style="font-family:SimHei;font-size:12px;color:#040404" Text="·青年教师指导"></asp:Label></a> 
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
                                    <asp:Label ID="Label4" runat="server" style="font-family:SimHei;font-size:12px;color:#040404;" >&nbsp;&nbsp;素质文化讲座审核状况</asp:Label>                                      
                                </div >
                            </td>
                            <td>
                                <div class="auto-style15">
                                    <asp:Button ID="Button1" runat="server" class="auto-style25" BorderWidth="0px" Text="查看明细" OnClick="Button1_Click" Font-Size="12px" /> 
                                </div>
                            </td>  
                            <td></td>
                            <td>
                                <div class="auto-style15">
                                    <asp:Button ID="Button2" runat="server" class="auto-style25" BorderWidth="0px" Text="修改" OnClick="Button2_Click" Font-Size="12px" /> 
                                </div>
                            </td>                            
                        </tr>                   
                    </table>                                                                
                </div>
                     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="15" Width="885px" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Size="12px" HorizontalAlign="Center">
                         <AlternatingRowStyle BackColor="White" />
                         <EditRowStyle BackColor="#2461BF" />
                         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                         <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
                         <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                         <SortedAscendingCellStyle BackColor="#F5F7FB" />
                         <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                         <SortedDescendingCellStyle BackColor="#E9EBEF" />
                         <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>         
            </div>
               
        </div>
    </div>
    </form>
</body>
</html>

