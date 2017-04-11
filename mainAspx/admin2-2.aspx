<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin2-2.aspx.cs" Inherits="admin2_2" %>

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
</head>
<body style="background-color:#f2f2f2">
    <form id="form1" runat="server">
    <div  class="white"> 
          <div class="auto-style1">  
            <div style="height:40px"></div>                    
            <table style="width:100%; height:40px;">
                <tr>
                    <td style="text-align:center"><asp:Label ID="Label1" runat="server"  style="font-family:SimHei;margin-top:1px;font-size:12px;height:5px; width: 10px;color:#040404" Text="当前页面：学生指导审核"></asp:Label></td>
                    <td style="width:400px;"></td>
                    <td style="text-align:center"><asp:TextBox ID="TextBox1" runat="server" Width="100px" OnTextChanged="TextBox1_TextChanged" TabIndex="1"></asp:TextBox>&nbsp;<asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" CssClass="auto-style117" TabIndex="2"/></td>
                </tr>
            </table>
             <div class="auto-style100">
                 &nbsp;&nbsp;&nbsp;&nbsp;<a href="admin2-1.aspx"><asp:Label ID="Label3" runat="server" style="font-family:SimHei;font-size:12px;color:#040404" Text="·毕业论文" TabIndex="3"></asp:Label></a>&nbsp;   
                 <a href="admin2-2.aspx"><asp:Label ID="Label4" runat="server" style="font-family:SimHei;font-size:12px;color:#0066FF" Text="·指导学生" TabIndex="4"></asp:Label></a>&nbsp;  
                 <a href="admin2-3.aspx"><asp:Label ID="Label5" runat="server" style="font-family:SimHei;font-size:12px;color:#040404" Text="·项目实践" TabIndex="5"></asp:Label></a>   
                 </div>
         </div>
        &nbsp;
        <div class="auto-style3"> 
            <div class="auto-style4">
                 <div class="auto-style5">
            <asp:Label ID="Label2" runat="server" style="font-family:SimHei;font-size:12px;color:#080a58" Text="指导学生审核列表" TabIndex="5"></asp:Label>
                </div>
                 
                </div>
           <asp:GridView ID="GridView1" runat="server" Width="1130px" Height="155px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Size="12px" HorizontalAlign="Center" TabIndex="6">
               <AlternatingRowStyle BackColor="White" />
               <Columns>
                   <asp:CommandField HeaderText="操作" ShowSelectButton="True" />
               </Columns>

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
