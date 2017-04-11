<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user6.aspx.cs" Inherits="user6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
      <style type="text/css">
          .auto-style1  {
            width: 100%;
            height:97px;
            background-color:#eef1f7;
        }
           .auto-style2{
            height:57px;
            padding-top:1%;
            margin-left:30px;
        }
           .auto-style4 {
            border-top:10px ;
            height:24px;
        }
            .auto-style6 {
            width: 100%;
            height:601px;
            padding-top:2.2%;
            background-color:#d5dae6;
             margin-left: 0px;
         }
            .auto-style7 {
            width: 80%;
            height:80%;
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
           .auto-style15{
       padding-left:25%;
         }
 
               .auto-style17 {
            background-image:url('Confirm.png');
            background-repeat:no-repeat;         
            background-position:center;
        }
          .auto-style24 {
              padding-right:20%;
          }       
         .auto-style24 {
            
             padding-top: 1%;
             width:75%;
             height: 45px;
         }
                 
         .auto-style28 {
             height: 40px;
             width: 100%
         }
                 
          .auto-style29 {
            width: 100%;
            height:50%;
            padding-left:15%;
            padding-right:15%;
          }
                 
          .auto-style30 {
              height: 17px;
          }
                 
          .auto-style43 {
              width: 230px;
              height: 30px;
          }
                 
          .auto-style45 {
              width: 230px;
              height: 30px;
              padding-left:10px;
          }
          .auto-style49 {
              width: 90px;
              height: 36px;
          }
          .auto-style50 {
              height: 36px;
          }
          .auto-style51 {
              width: 90px;
          }
                 
          .auto-style52 {
              height: 30px;
              width: 210px;
          }
          .auto-style53 {
              height: 30px;
              width: 195px;
          }
          .auto-style54 {
              height: 30px;
              width: 123px;
          }
            .auto-style56{
            width: 100%;
            height:30%;
            padding-left:15%;
            padding-right:15%;
          }
                 
          .auto-style55 {
              width: 100px;
          }
                 
          .auto-style57 {
              width: 90px;
              height: 30px;
          }
                 
          .auto-style58 {
              height: 56px;
          }
                 
          .auto-style59 {
              height: 27px;
                width: %;
          }
          .auto-style60 {
              width: 606px;
          }
          .auto-style61 {
              height: 27px;
              width: 56%;
          }
                 
          .auto-style62 {
              height: 27px;
              width: 10%;
          }
                 
          .auto-style63 {
              width: 123px;
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
                    <td style="text-align:center;width:25%"><asp:Label ID="Label1" runat="server"  style="font-family:'SimHei';font-size:12px;color:#040404" Text="当前页面：修改信息"></asp:Label></td>         
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
                                    <asp:Label ID="Label4" runat="server" style="font-family:'SimHei';font-size:12px;color:#040404;" >&nbsp;&nbsp;修改个人信息</asp:Label>                                      
                                </div >
                            </td>
                                                      
                        </tr>                   
                    </table>                                                                
                </div>
               
                    <table style="background-color:#FFFFFF; font-family:'SimHei';font-size:12px;text-align:left" class="auto-style29">
                      <tr>
                           <td class="auto-style30" colspan="4">

                          </td>

                        
                     </tr>



                      <tr>
                           <td class="auto-style52">
              <div>
                  <table class="auto-style45">
                      <tr>
                          <td class="auto-style51"> &nbsp;&nbsp;<asp:Label ID="Label5" runat="server" ForeColor="#040404">工号:</asp:Label>
                              </td>
                          <td>

                             

                              <asp:Label ID="Label6" runat="server" Text="Label" ForeColor="#9b9898">04130213</asp:Label>

                             

                          </td>
                      </tr>
                  </table>
                  

              </div>
                          </td>

                          <td class="auto-style53">
                             <table class="auto-style43">
                                  <tr>
                                    <td class="auto-style51">  &nbsp;&nbsp;<asp:Label ID="Label2" runat="server" ForeColor="#040404">姓名：</asp:Label>
                                    </td>
                                    <td>
                                     <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="#9b9898">张三</asp:Label>
                                    </td>
                                   </tr>
                              </table>
                          </td> 

                          <td class="auto-style63" colspan="2" rowspan="3">

                              
                              <asp:Image ID="Image1" runat="server" Width="120px" BorderWidth="1px"/>
                              <br />
                              <asp:FileUpload ID="FileUpload1" runat="server" Width="242px" />       
                          </td> 

                          
                     </tr>



                      <tr>
                           <td class="auto-style52">
                          <table class="auto-style45">
                      <tr>
                          <td class="auto-style49">&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" ForeColor="#040404">性别：</asp:Label>
                              </td>
                          <td class="auto-style50">
                              <table>
                                         <tr>
                                            <td>
                                                  <asp:RadioButton ID="RadioButton1" runat="server" Text="男" />
                                           </td>
                                           <td>
                                                <asp:RadioButton ID="RadioButton2" runat="server" Text="女" />
                                           </td>
                                         </tr>
                               </table>                            
                          </td>
                      </tr>
                  </table>
                          </td>

                          <td class="auto-style53">
                              <table class="auto-style43">
                                  <tr>
                                    <td class="auto-style51"> &nbsp;&nbsp;<asp:Label ID="Label8" runat="server" ForeColor="#040404">出生年月：</asp:Label>
                                    </td>
                                    <td>                                   
                                        <asp:TextBox ID="TextBox6" runat="server" Width="120px"></asp:TextBox>
                                    
                                    </td>
                                   </tr>
                              </table>
                         </td> 

                         
                     </tr>



                      <tr>
                           <td class="auto-style52">
                               <table class="auto-style45">
                      <tr>
                          <td class="auto-style51">&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" ForeColor="#040404"  >职称:</asp:Label>
                              </td>
                          <td>

                             
                            
                              <asp:TextBox ID="TextBox1" runat="server" Width="120px"></asp:TextBox>

                             

                          </td>
                      </tr>
                  </table>
                          </td>

                          <td class="auto-style53">

                              <table class="auto-style45">
                      <tr>
                          <td class="auto-style51">  &nbsp;&nbsp;<asp:Label ID="Label10" runat="server" ForeColor="#040404"  >院系:</asp:Label>
                              </td>
                          <td>

                             

                              <asp:TextBox ID="TextBox2" runat="server" Width="120px"></asp:TextBox>

                             

                          </td>
                      </tr>
                  </table></td> 

                         
                     </tr>
                        <td class="auto-style52">
                               <table class="auto-style45">
                      <tr>
                          <td class="auto-style51">&nbsp;&nbsp;<asp:Label ID="Label11" runat="server" ForeColor="#040404"  >联系方式:</asp:Label>
                              </td>
                          <td>

                             

                              <asp:TextBox ID="TextBox3" runat="server" Width="120px"></asp:TextBox>

                             

                          </td>
                      </tr>
                  </table>
                          </td>

                          <td class="auto-style53">

                              <table class="auto-style45">
                      <tr>
                          <td class="auto-style51">  &nbsp;&nbsp;<asp:Label ID="Label12" runat="server" ForeColor="#040404"  >邮箱:</asp:Label>
                              </td>
                          <td>

                             

                              <asp:TextBox ID="TextBox4" runat="server" Width="120px" ></asp:TextBox>

                             

                          </td>
                      </tr>
                  </table></td> 

                          <td class="auto-style54">
                              <div class="auto-style15">
                                  <asp:Button ID="Button3" runat="server" Text="上传照片" OnClick="Button3_Click1" />
                               </div>
                          </td>


                          <td class="auto-style54">
                              <div class="auto-style16">
                                  <asp:Button ID="Button4" runat="server" Text="修改照片" OnClick="Button4_Click" />
                               </div>
                          </td>


                      </table>

                <table style="background-color:#FFFFFF" class="auto-style56">

                <tr>
                    <td class="auto-style57">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label13" runat="server" ForeColor="#040404"  >简介:</asp:Label>
                              </td>                   
                    <td rowspan="2">
                        <asp:TextBox ID="TextBox5" runat="server" Height="107px" Width="725px" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style55">
                    </td>
                </tr>
                </table>
                <div style="background-color:#FFFFFF;" class="auto-style58" >
                    <table class="auto-style60">
                        <tr>
                            <td class="auto-style61"></td>
                            <td class="auto-style62">
                                <div class
                                    ="auto-style18">
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="确定" Height="20px" Width="55px" />
                                    </div>
                                    </td>
                            <td class="auto-style59"></td>
                        </tr>
                    </table>
                   

                </div>
            </div>
        </div>
     
    </form>
</body>
</html>
