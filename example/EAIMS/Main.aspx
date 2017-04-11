<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width:100%;
            height:100%;
            background-color:#00ffff;
        }
         .auto-style2 {
            width:80%;
            height:65px;
            background-color:#ffd800;
            margin-left:10%;
        }
          .auto-style3 {
            width:70%;
            height:40px;
            background-color:#00ff21;
            margin-left:15%;
        }
           .auto-style4 {
            width:70%;
            height:30px;
            background-color:#ffffff;
            margin-left:15%;
        }
            .auto-style5 {
            width:70%;
            background-color:#808080;
            margin-left:15%;
            height: 400px;
        }
           .auto-style6 {
            width: 100%;
            height: 375px;
        }
            .auto-style7 {
            width:70%;
            height: 35px;
            margin-left:15%;
        }     
           </style>
</head>
<body class="auto-style1">
    <form id="form1" runat="server">
    <div class="auto-style2"></div>
    <div class="auto-style3"></div>
    <div class="auto-style4">
        <table style="width:100%;height:30px">
            <tr>
                <td>
                    <a href="TeacherInformations.aspx" target="ifrm">基本信息</a>
                </td>
                <td>
                    <a href="CourseInformations.aspx" target="ifrm">课程信息</a>
                </td>
                <td>
                    <a href="GuideStudentss.aspx" target="ifrm">指导学生</a> 
                </td>
                <td>
                     
                    <a href="GuideDissertations.aspx" target="ifrm">毕业论文</a>
                </td>
                <td>
                     
                    <a href="Interships.aspx" target="ifrm">实习实践</a>
                </td>
                <td>
                    <a href="CollegeStudentITPs.aspx" target="ifrm">大学创新</a>
                </td>
                <td>
                    <a href="MidtermExaminations.aspx" target="ifrm">期中教学</a> 
                </td>
                <td>
                    <a href="Others.aspx" target="ifrm">其它信息</a> 
                </td>            
            </tr>
        </table>
    </div>
    <div class="auto-style5">
        <iframe  name="ifrm" id="ifrm" class="auto-style6" scrolling="no"></iframe>
    </div>
    <div class="auto-style7">
        <table style="height:35px;width:100%">
            <tr>
                <td style="width:20%;text-align:center"></td>
                <td style="width:40%;text-align:center">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td style="width:20%;text-align:center">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="上传文件" />
                </td>
                <td style="width:20%;text-align:center">
                    <asp:Button ID="Button2" runat="server" Text="退出" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
