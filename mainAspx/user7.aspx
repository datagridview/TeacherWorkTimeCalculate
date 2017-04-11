<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user7.aspx.cs" Inherits="user7" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
          .auto-style1  {
            width: 100%;
            height:70px;
            background-color:#eef1f7;
        }
           .auto-style2{
            height:30px;
            padding-top:1%;
            margin-left:30px;
        }
           .auto-style4 {
            
            height:26px;
        }
            .auto-style6 {
            width: 100%;
            height:530px;
            padding-top:2.2%;
            background-color:#d5dae6;
        }
            .auto-style7 {
            width: 80%;
            height:77%;
            margin-top:0.8%;
            margin-right:10%;
            margin-left:10%;
                 
        }
             .auto-style8 {
            padding-top:10px;
            width:100%;
            height: 0px;
             margin-top: 0px;
         }
                     
         .auto-style24 {
             width: 747px;
             height: 23px;
         }
         .auto-style25 {
             height: 10px;
         }
                             
         .auto-style26 {
          
             
             width: 100%;
             height: 292px;
             }
           .auto-style27 {
            background-color:#FFFFFF;
         }  
            
                             
         .auto-style28 {
             height: 40px;
          background-color: #eef1f7;
         }
            
                             
         .auto-style29 {
             width: 550px;
              
         }
                              
           .auto-style32 {
             width: 29%;
         }
                      
             .auto-style40 {
            width:80px;
            height:30px;            
            background-image:url('yes.png');
            background-repeat:no-repeat;         
            background-position:center;
        }
                .auto-style41 {
            width:80px;
            height:30px;            
            background-image:url('no.png');
            background-repeat:no-repeat;         
            background-position:center;
        }
                  .auto-style3{
              margin-top:0%;
             
         }
                      
         .auto-style43 {
           width: 149px;
           height: 23px;
         }
                      
         .auto-style44
        {
            width: 160px;
            height: 23px;
        }
          .auto-style111{
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
     <div class="auto-style111">
        <div style="height:40px"></div>
            <table style="width:100%">
                <tr style="height:40px">
                    <td style="text-align:center;width:25%"><asp:Label ID="Label1" runat="server"  style="font-family:'SimHei';font-size:12px;color:#040404" Text="当前页面：修改密码"></asp:Label></td>         
                    <td></td>
                </tr>
            </table> 
    </div>
         <div class="auto-style6">
            <div class="auto-style7">
                <div class="auto-style8">
                     <div class="auto-style28" >
                                 
                <asp:Label ID="Label4" runat="server" style="font-family:'SimHei';font-size:12px;color:#040404;" >&nbsp;&nbsp;修改个人信息</asp:Label>
                                 
                                                                
                                </div >
                    <table class="auto-style26" style="margin: 0px; padding: 0px; border-color: #FFFFFF; border-width: thin; background-color: #FFFFFF;" >
                        
                         <tr class="auto-style27">
                             <td class="auto-style25" colspan="4" style="border-color: #FFFFFF; border-width: 0px"></td>
                             
                         </tr>   
                          <tr class="auto-style27">
                              <td class="auto-style32" rowspan="4" style="border-color: #FFFFFF" ></td>
                              <td class="auto-style24" colspan="2">
                                  <asp:Label ID="Label2" runat="server" style="font-family:'SimHei';font-size:12px;color:#040404;" >原密码:&nbsp;</asp:Label>
                                  &nbsp;
                                  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                              </td>
                               <td class="auto-style29" rowspan="4">
                               <div class="auto-style3">
                                </div>
                                </td>
                         </tr>    
                        <tr class="auto-style27">
                              <td class="auto-style24" colspan="2">
                                    <asp:Label ID="Label3" runat="server" style="font-family:'SimHei';font-size:12px;color:#040404;" >新密码:&nbsp;</asp:Label>
                                  &nbsp;
                                  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                         </tr >   
                         <tr class="auto-style27">
                              <td class="auto-style24" colspan="2">
                                  <asp:Label ID="Label5" runat="server" style="font-family:'SimHei';font-size:12px;color:#040404;" >确认密码:</asp:Label>
                                  &nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                             </td>
                         </tr>    
                         <tr class="auto-style27">
                              <td class="auto-style44">
                               
                                  <asp:Button ID="Button1" runat="server" class="auto-style40"  Height="30px" 
                                      Width="80px" OnClick="Button1_Click" Font-Size="Large" />
                                  
                                  &nbsp;

                              </td>
                            
                              <td class="auto-style43">
                                 <asp:Button ID="Button2" runat="server" class="auto-style41"  Height="30px" 
                                      Width="80px" OnClick="Button2_Click"  />
                              </td>
                            
                         </tr>               
                    </table>                                                                
                </div>
            </div>
        </div>
    
    </form>
</body>
</html>

