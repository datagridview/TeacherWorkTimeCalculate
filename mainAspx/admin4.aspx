<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin4.aspx.cs" Inherits="admin4" %>

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
        
                  
          
                        
           .auto-style3 {
            width: 95%;
            height:131px;
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
          
                                   
          
            
         
          
                     
             .auto-style101 {
            width: 2928px;
            height: 16px;
        }
                     
         
          
        
             #Select1 {
            width: 658px;
        }
            .auto-style117 {
            width:80px;
            height:20px;            
            background-image:url('submit.png');
            background-repeat:no-repeat;         
            background-position:center;
        }                 
             </style>
    
</head>
<body style="background-color:#f2f2f2">
  
    <form id="form1" runat="server">
  
                              <input type="hidden" name="selectvalue"  id="selectvalue" value="wu" />
  
    <div  class="white">
        <div class="auto-style1">        
            <div style="height:40px"></div>   
            <table style="width:100%; height:40px; border:0px">
                <tr>
                    <td style="text-align:center"><asp:Label ID="Label1" runat="server"  style="font-family:SimHei;margin-top:1px;font-size:12px;height:5px; width: 10px;color:#080a58" Text="当前页面：导入数据"></asp:Label></td>             
                    <td style="width:80%"></td> 
                </tr>  
            </table>   
         </div>
        <div class="auto-style3"> 
            <div class="auto-style4">
                 <div class="auto-style5">
            <table style="width:100%;">
                         <tr>
                             <td class="auto-style101">    
            <asp:Label ID="Label2" runat="server" style="font-family:SimHei;font-size:12px;color:#080a58" Text="导入数据列表" TabIndex="1"></asp:Label></td>
                             <td class="auto-style14">
                                 &nbsp;</td>
                             
                         </tr>
                     </table>
                </div>
                 
                </div>
            <table style="width:100%; height:80px; font-family:SimHei;font-size:12px;">
                     <tr>
                         <td></td> 
                         <td style="text-align:center; width:100px">&nbsp;上传文件：</td>
                          <td style="text-align:center;width:225px"><asp:FileUpload ID="FileUpload1" runat="server" Width="200px" TabIndex="2" /></td>
                         <td ></td>
                     </tr>
                     <tr style="height:40px">
                         <td></td>
                          <td style="text-align:center">&nbsp;文件成分：</td>
                          <td  style="text-align:center;width:225px">
                              <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="200px" TabIndex="3">
                                  <asp:ListItem>课程表</asp:ListItem>
                                  <asp:ListItem>学生表</asp:ListItem>
                                  <asp:ListItem>职工表</asp:ListItem>
                                  <asp:ListItem>工作量</asp:ListItem>
                              </asp:DropDownList>
                          </td>
                         <td><asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" CssClass="auto-style117" TabIndex="4"/></td>
                     </tr>
                 </table>     
            </div>
        &nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Label" TabIndex="5"></asp:Label>
&nbsp;<div class="auto-style3"> 
 
                 <asp:GridView ID="GridView1" runat="server" Height="125px" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Size="12px" TabIndex="6">
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
    </form>
</body>
</html>

