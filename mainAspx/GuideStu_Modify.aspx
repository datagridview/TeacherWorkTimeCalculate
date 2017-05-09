<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GuideStu_Modify.aspx.cs" Inherits="admin2_2_1_1" %>

<!DOCTYPE html>
<script runat="server">
</script>




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
        
                  
          
             .auto-style100 {
              padding-top:1%;
             width: 100%;
             height:20px;
        }         
           
         
          
             .auto-style3 {
            width: 95%;
            height:225px;
             margin-top:13px;
             margin-left:28px;
        }
                        
         
          
        
             .auto-style10 {
            height: 33px;
            width: 183px;
        }
             
         
          
        
             .auto-style15 {
            width: 95%;
            height:200px;
             margin-bottom:10px;
             margin-left:28px;
        }
                             
         
          
        
             .auto-style103 {
            width: 122px;
             color:#040404;

        }
             .auto-style117 {
            width:80px;
            height:20px;            
            background-image:url('submit.png');
            background-repeat:no-repeat;         
            background-position:center;
        }  
             .auto-style118
        {
            width: 80px;
            color: #040404;
            height: 33px;
        }
        .auto-style119
        {
            height: 33px;
            width: 183px;
            table-layout: fixed;
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
                    <td style="text-align:center;width:25%"><asp:Label ID="Label1" runat="server"  style="font-family:SimHei;margin-top:1px;font-size:12px;height:5px; width: 10px;color:#040404" Text="当前页面：学生指导审核"></asp:Label></td>
                    <td style="width:60%"></td>
                    <td style="text-align:center"><asp:Button ID="Button2" runat="server" Text="返回" OnClick="Button2_Click" CssClass="auto-style117" TabIndex="1" /></td>
                </tr>
            </table>
             <div class="auto-style100">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" style="font-family:SimHei;font-size:12px;color:#040404" Text="·毕业论文" TabIndex="2" ></asp:Label>
                 <asp:Label ID="Label4" runat="server" style="font-family:SimHei;font-size:12px;color:#0066FF" Text="·指导学生" TabIndex="3"></asp:Label>
                 <asp:Label ID="Label5" runat="server" style="font-family:SimHei;font-size:12px;color:#040404" Text="·项目实践" TabIndex="4"></asp:Label>
                 </div>
         </div>
        <div class="auto-style3"> 
                 
            <table style="width:100%">
                         <tr>
                             <td><asp:Label ID="Label2" runat="server" style="font-family:SimHei;font-size:12px;color:#080a58" Text="04130101 王某某" TabIndex="5"></asp:Label></td>
                             <td style="text-align:center;width:125px" >&nbsp;<asp:Button ID="Button3" runat="server" Text="不通过" OnClick="Button3_Click" CssClass="auto-style117" TabIndex="6"/></td>
                             <td style="text-align:center;width:125px" >&nbsp;<asp:Button ID="Button4" runat="server" Text="提交" OnClick="Button4_Click" CssClass="auto-style117" TabIndex="7"/></td>
                         </tr>
                     </table>
            &nbsp;
           <asp:GridView ID="GridView1" runat="server" Width="100%" Height="152px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" PageSize="6" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Size="12px" HorizontalAlign="Center" TabIndex="8">
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
                     <table style="width:100%">
                         <tr>
                             <td> <asp:Label ID="Label6" runat="server" style="font-family:SimHei;font-size:12px" Text=" 当前修改：04130101 王一" TabIndex="9"></asp:Label></td> 
                             <td style="text-align:center;width:125px"><asp:Button ID="Button5" runat="server" Text="修改" OnClick="Button5_Click" CssClass="auto-style117" TabIndex="10"/></td>
                             <td style="text-align:center;width:125px"><asp:Button ID="Button6" runat="server" Text="删除" OnClick="Button6_Click" CssClass="auto-style117" TabIndex="11"/></td>
                         </tr>
                     </table>
            <table style="width:100%; max-height:100px; font-family:SimHei;font-size:12px; color:#c7cedc ">
                <tr style="height:5px">            
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; " aria-atomic="True" class="auto-style103">&nbsp;&nbsp;学号：</td>
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; table-layout: fixed;" aria-atomic="True" class="auto-style10">&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" TabIndex="12"></asp:TextBox>
                         </td>
                        </tr>
                <tr style="height:5px">                  
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; " aria-atomic="True" class="auto-style103">&nbsp;&nbsp;姓名：</td>
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; table-layout: fixed;" aria-atomic="True" class="auto-style10">&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" TabIndex="13"></asp:TextBox>
                         </td>          
                        </tr>
                     <tr>
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; " aria-atomic="True" class="auto-style118">&nbsp;&nbsp;总课时：</td>
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; " aria-atomic="True" class="auto-style119">&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" TabIndex="14"></asp:TextBox>
                         </td>
                     </tr>
                   <tr style="height:5px">                      
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; " aria-atomic="True" class="auto-style103">&nbsp;&nbsp;授导时间：</td>
                         <td style="border-color: #999999; border-width: 3px; background-color: #FFFFFF; table-layout: fixed;" aria-atomic="True" class="auto-style10">&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                         </td>                   
                        </tr>           
                 </table>
            </div>
    </div>
       
    
    </form>
       
    
</body>
</html>
