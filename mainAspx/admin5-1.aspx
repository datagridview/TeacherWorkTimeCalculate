<%@ Page Language="C#" AutoEventWireup="true"  EnableEventValidation = "false" CodeFile="admin5-1.aspx.cs" Inherits="admin5_1" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style>
            .auto-style1 {
            width:100%;
            height:1280px;
            background-image:url('adbg3.png');
            background-repeat:no-repeat;
            font-family:SimHei;
         }
            .auto-style11
            {
                width: 100%;
                height: 120px;
                background-color: #eef1f7;
                background-image: url('bg.png');
                border-bottom: 0px solid #c7cedc;
            }
          .auto-style2 {
            background-repeat:no-repeat;
            background-size:100%;
            font-family:SimHei;
                height: 32px;
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
 <div style="height:100%">
     <div class="auto-style11">
        <div style="height:40px"></div>   
        <table style="width:100%;height:60px;">
            <tr style="height:30px;">
                <td style="width:20%; text-align:center"><asp:Label ID="lbldqym" runat="server" Font-Names="黑体" Font-Size="15px" ForeColor="#44536a" Text="当前页面：工作统计"></asp:Label></td>
                <td ></td>
                <td ></td>
            </tr>
            <tr style="height:30px">
                <td style="text-align:center"><asp:Label ID="Label3" runat="server" Font-Names="黑体" Font-Size="15px" ForeColor="#44536A" Text="当前教师：" TabIndex="1"></asp:Label>
                    &nbsp;<asp:Label ID="Label10" runat="server" Font-Names="黑体" Font-Size="15px" ForeColor="#44536A" Text="lable" TabIndex="2"></asp:Label></td>
                <td style="width:60%"></td>
                <td style="text-align:center"><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="导出" CssClass="auto-style117" TabIndex="3"/></td>   
            </tr>  
        </table>   
     </div>
      <div id="divEx" runat="server">
          <table style="height:25px;width:100%">
              <tr>
                  <td style="text-align:center"><asp:Label ID="Label12" runat="server" Text=" 教师信教师信息" Font-Names="宋体" Font-Size="Small" TabIndex="4" ></asp:Label></td>
              </tr>
          </table>      
&nbsp;<asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="655px" Font-Size="12px" HorizontalAlign="Center" TabIndex="5">
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
            <table style="height:25px;width:100%">
              <tr>
                  <td style="text-align:center"><asp:Label ID="Label11" runat="server" Text="课程教学"  Font-Names="宋体" Font-Size="Small" TabIndex="6" ></asp:Label></td>
              </tr>
          </table>       
&nbsp;<asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="655px" Font-Size="12px" HorizontalAlign="Center" TabIndex="7">
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
            <table style="height:25px;width:100%">
              <tr>
                  <td style="text-align:center"><asp:Label ID="Label13" runat="server" Text="毕业论文指导"  Font-Names="宋体" Font-Size="Small" TabIndex="8" ></asp:Label></td>
              </tr>
          </table>       
&nbsp;<asp:GridView ID="GridView4" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="655px" Font-Size="12px" HorizontalAlign="Center" TabIndex="9">
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
           <table style="height:25px;width:100%">
              <tr>
                  <td style="text-align:center"><asp:Label ID="Label14" runat="server" Text="项目实践" Font-Names="宋体" Font-Size="Small" TabIndex="10"></asp:Label></td>
              </tr>
          </table>        
&nbsp;<asp:GridView ID="GridView6" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="655px" Font-Size="12px" HorizontalAlign="Center" TabIndex="11">
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
             <table style="height:25px;width:100%">
              <tr>
                  <td style="text-align:center"><asp:Label ID="Label15" runat="server" Text="素质文化讲座" Font-Names="宋体" Font-Size="Small" TabIndex="12"></asp:Label></td>
              </tr>
          </table>        
&nbsp;<asp:GridView ID="GridView7" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="655px" Font-Size="12px" HorizontalAlign="Center" TabIndex="13" >
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
             <table style="height:25px;width:100%">
              <tr>
                  <td style="text-align:center"><asp:Label ID="Label16" runat="server" Text="学生指导" Font-Names="宋体" Font-Size="Small" TabIndex="14"></asp:Label></td>
              </tr>
          </table>
&nbsp;<asp:GridView ID="GridView5" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="655px" Font-Size="12px" HorizontalAlign="Center" TabIndex="15">
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
             <table style="height:25px;width:100%">
              <tr>
                  <td style="text-align:center"><asp:Label ID="Label17" runat="server" Text="青年教师指导" Font-Names="宋体" Font-Size="Small" TabIndex="16"></asp:Label></td>
              </tr>
          </table>        
&nbsp;<asp:GridView ID="GridView8" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="655px" Font-Size="12px" HorizontalAlign="Center" TabIndex="17">
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

