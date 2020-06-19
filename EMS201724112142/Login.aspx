<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EMS201724112142.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>EMS-登录页面</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="bootstrap.min.js"></script>
<style type="text/css">
   body{
    width: 100%;   
    height: 100%;   
    font-family: sans-serif;   
    margin: 0;
    background-color: #c3a1d0;  
   }
   #login{
        position: absolute;   
        top: 50%;   
        left:50%;   
        margin: -150px 0 0 -150px;   
        width: 300px;   
        height: 300px;
        text-align:center;
   }
   #login h1{   
    color: #f1e8f5;  
    text-shadow:0 0 5px;   
    letter-spacing: 1px;   
    text-align: center;   
    }   
    h1{   
        font-size: 3em;   
        margin: 0.67em 0;   
    }   
   .form-control{
        height:30px;
        width:60px;
        border-color:#F380FD;
        border-right-style:Dotted;
    }
   .btn-light{
       margin-top:6px;
       Height:30px;
       Width:90px;
       padding:3px;
       border-color:#F380FD;
       border-style:Dotted;
   }
</style>
</head>
<body class="bg">
    <form id="form1" runat="server">
        <div class="container" id="login">
            <div class="row">
                <div class="col">
                    <h1>欢迎登陆</h1><hr />
                    <!--添加Panel，class="form-inline"让两个控件在同一行-->
                    <asp:Panel ID="Panel1" runat="server" class="form-inline">
                    账号：<asp:TextBox ID="id" runat="server" class="form-control" placeholder="请输入您的工号"></asp:TextBox>
                    </asp:Panel><br />
                    <asp:Panel ID="Panel2" runat="server" class="form-inline">
                    密码：<asp:TextBox ID="psw" runat="server" class="form-control" placeholder="请输入您的密码"></asp:TextBox>
                    </asp:Panel>
                    <br /><asp:Label ID="Label1" runat="server"></asp:Label>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="登录" class="btn btn-light" OnClick="Button1_Click"/>
                 </div>
            </div>
        </div>
    </form>
</body>
</html>
