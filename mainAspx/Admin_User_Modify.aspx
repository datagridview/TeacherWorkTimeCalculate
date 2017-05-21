<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_User_Modify.aspx.cs" Inherits="admin10" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style type="text/css">
            .auto-style2 {
            width:100%;
            height:27px;
            background-color:#eef1f7;
            background-image:url('bg.png');
            border-bottom:0px solid #c7cedc;
        }
             .auto-style3 {
                height:200px;
                padding-left:60px;
                padding-right:60px;
        }
             .auto-style4 {
                height:300px;
                padding-left:60px;
                padding-right:60px;
        }
            .auto-style117 {
            width:80px;
            height:20px;            
            background-image:url('submit.png');
            background-repeat:no-repeat;         
            background-position:center;
        }  
            .auto-style118 {
                height: 26px;
            }
            .auto-style119 {
                width: 40%;
                height: 26px;
            }
            </style>
     <!-- Bootstrap Styles-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.useso.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body style="background-color:#f2f2f2">
     <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="page-header">
                           修改用户<small> update user</small>
                        </h2>
                    </div>
                </div> 
    <form id="form1" runat="server">

            <table style="width:100%">
                <tr>
                   
                    <td style="text-align:center;" class="auto-style119"></td>                  
                    <td style="text-align:center"><asp:Label ID="Label1" runat="server" Text="搜索工号" Font-Names="黑体" Font-Size="Medium" ForeColor="#040404" TabIndex="1" ></asp:Label>:<asp:TextBox ID="TextBox8" runat="server" CssClass="form_control" TabIndex="2" Height="24px"></asp:TextBox>&nbsp;<asp:Button ID="Button3" runat="server" Text="确定" OnClick="Button3_Click" CssClass="btn btn-default" TabIndex="3" /></td>
                </tr>
            </table>                                    

        &nbsp;
        <div style="margin:0 150px">
           &nbsp;<asp:Label ID="lbltjyh" runat="server" Text="修改用户列表" Font-Names="黑体" Font-Size="15px" ForeColor="#44536A" TabIndex="4"></asp:Label>
            <br />

            <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-hover dataTable no-footer" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" PageSize="6" Font-Size="12px" HorizontalAlign="Center" TabIndex="7">
                <Columns>
                    <asp:CommandField HeaderText="操作" ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
        </div>
           <div id="myMain" style="margin:0px 100px" class="col-lg-2">
            <asp:Label ID="Label3" runat="server" style="font-family:SimHei;font-size:medium;color:#080a58" Text="" TabIndex="22"></asp:Label>
        <div class="form-group">
            <div class="container">
                <div class="row">
                      <div class="col-lg-3"></div>
            <div class="col-lg-3">
            <asp:Label runat="server" Font-Size="Medium">姓名</asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="200px" CssClass="form-control"/> 
                <br />
                <asp:Label runat="server" Font-Size="Medium">性别</asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Width="200px" CssClass="form-control"/> 
           
                 <br />
            <asp:Label runat="server" Font-Size="Medium">密码</asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Width="200px" CssClass="form-control"/><br />
                 <asp:Label runat="server" Font-Size="Medium">出生年月</asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Width="200px" CssClass="form-control"/>
                 <br />
              
            </div>
            <div class="col-lg-3">
            <asp:Label runat="server" Font-Size="Medium">院系</asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" Width="200px" CssClass="form-control"/>
                 <br />
                 <asp:Label runat="server" Font-Size="Medium">职称</asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" Width="200px" CssClass="form-control"/><br />
                 <asp:Label runat="server" Font-Size="Medium">联系方式</asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" Width="200px" CssClass="form-control"/><br />
                 <asp:Label runat="server" Font-Size="Medium">权限</asp:Label>           
              <asp:DropDownList ID="DropDownList1" Width="200px" CssClass="form-control" runat="server">
                             <asp:ListItem>管理员</asp:ListItem>
                             <asp:ListItem>普通用户</asp:ListItem>

                </asp:DropDownList>
                </div>
                    <div class="col-lg-3"></div>
                </div>
            </div>
        </div>
              <div class="form-group">
            <div class="container">
                <div class="row">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"><asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click"  CssClass="btn btn-primary" TabIndex="9"/></div>
                    <div class="col-lg-1"><asp:Button ID="Button2" runat="server" Text="删除" OnClick="Button2_Click" CssClass="btn btn-default" TabIndex="10" /></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    </div>
                </div>
            </div>
               </div>
        
    </form> </div>
</body>
</html>
