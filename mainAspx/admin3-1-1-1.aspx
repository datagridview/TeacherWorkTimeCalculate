<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin3-1-1-1.aspx.cs" Inherits="admin3_1_1_1" %>

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
            width: 988px;
        }

         
          
             .auto-style100 {
              padding-top:1%;
             width: 100%;
             height:20px;
        }         
           
         
          
             .auto-style3 {
            width: 95%;
            height:220px;
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
            width: 2753px;
        }
                     
         
          
        
             .auto-style9 {
            height: 23px;
            width: 249px;
        }
             
         
          
        
             .auto-style10 {
            height: 33px;
            width: 183px;
             color:#040404;
        }
             
         
          
        
             .auto-style15 {
            width: 95%;
            height:200px;
             margin-bottom:10px;
             margin-left:28px;
        }
                             
         
          
        
             .auto-style102 {
            width: 2718px;
        }
                     
         
          
        
             .auto-style103 {
            width: 120px;
        }
                     
         
          
        
             .auto-style108 {
            width: 122px;
            height: 33px;
        }
        .auto-style109 {
            height: 33px;
            width: 183px;
            table-layout: fixed;
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
  
    <div class="white">
         <div class="auto-style1">  
            <div style="height:40px"></div> 
            <table style="width:100%; height:40px;">
                <tr>
                    <td style="text-align:center;width:25%"><asp:Label ID="Label1" runat="server"  style="font-family:SimHei;margin-top:1px;font-size:12px;height:5px; width: 10px;color:#080a58" Text="当前页面：事务服务审核"></asp:Label></td>
                    <td style="width:60%"></td>
                    <td style="text-align:center"><asp:ImageButton ID="ImageButtonBack" runat="server" ImageUrl="~/back.png" OnClick="ImageButton1_Click" CssClass="auto-style117" TabIndex="1"/></td>
                </tr>     
            </table>
             <div class="auto-style100">
                  &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" style="font-family:SimHei;font-size:12px;color:#040404" Text="·素质文化讲座" TabIndex="2" ></asp:Label>
                 <asp:Label ID="Label4" runat="server" style="font-family:SimHei;font-size:12px;color:#0066FF" Text="·青年教师指导" TabIndex="3"></asp:Label>
             </div>
         </div>
        <div class="auto-style3"> 
            <table style="width:100%;">
                         <tr>
                             <td><asp:Label ID="Label2" runat="server" style="font-family:SimHei;font-size:12px;color:#080a58" Text="04130101 王某某" TabIndex="4"></asp:Label></td>
                             <td style="text-align:center;width:125px"><asp:Button ID="Button2" runat="server" Text="不通过" OnClick="Button2_Click" CssClass="auto-style117" TabIndex="5"/></td>
                             <td style="text-align:center;width:125px"><asp:Button ID="Button3" runat="server" Text="提交" OnClick="Button3_Click" CssClass="auto-style117" TabIndex="6"/></td>
                         </tr>
                     </table>
             &nbsp;
           <asp:GridView ID="GridView1" runat="server" Height="151px" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Size="12px" HorizontalAlign="Center" TabIndex="7">
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
        &nbsp;
         <div class="auto-style15"> 
                     <table style="width:100%;">
                         <tr>
                             <td><asp:Label ID="Label6" runat="server" style="font-family:'Adobe Heiti Std';font-size:12px;color:#080a58" Text="当前修改：" TabIndex="8"></asp:Label></td>
                             <td style="text-align:center;width:125px"><asp:Button ID="Button1" runat="server" Text="修改" OnClick="Button1_Click" CssClass="auto-style117" TabIndex="9"/></td>
                             <td style="text-align:center;width:125px"><asp:Button ID="Button4" runat="server" Text="删除" OnClick="Button4_Click" CssClass="auto-style117" TabIndex="10"/></td>
                         </tr>
                     </table>
            <table style="width:100%;font-family:'Adobe Heiti Std';font-size:12px;">
                <tr>
                    
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; "  class="auto-style108">&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="青年教师工号：" ForeColor="#040404" TabIndex="11"></asp:Label>
                         </td>
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; " class="auto-style109">&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" TabIndex="12"></asp:TextBox>
                         </td>
                     
                     </tr>    
                 <tr style="height:5px">
                    
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; " class="auto-style103">&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text="青年教师姓名：" ForeColor="#040404" TabIndex="13"></asp:Label>
                         </td>
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; table-layout: fixed;"  class="auto-style10">&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" TabIndex="14"></asp:TextBox>
                         </td>
                     
                     </tr>
                   <tr style="height:5px">
                        
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; " class="auto-style103">&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Text="年度：" ForeColor="#040404" TabIndex="15"></asp:Label>
                         </td>
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; table-layout: fixed;"  class="auto-style10">&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" TabIndex="16"></asp:TextBox>
                         </td>
                    
                        </tr>
                  <tr style="height:5px">
                    
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; " class="auto-style103">&nbsp;&nbsp;<asp:Label ID="Label10" runat="server" Text="总课时：" ForeColor="#040404" TabIndex="17"></asp:Label>
                         </td>
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; table-layout: fixed;"class="auto-style10">&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server" TabIndex="18"></asp:TextBox>
                         </td>
                     
                     </tr>
                 </table>
            </div>
    </div>  
    </form>
    
</body>
</html>

