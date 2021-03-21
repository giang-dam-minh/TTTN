<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="GUI.admin.login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/><title>
	Quản trị
</title><link rel="shortcut icon" href="/images/iconlogo.ico" type="image/x-icon" />
    <style type="text/css">
        html, body
        {
            height: 100%;
            font-family: Arial;
            font-size: 12px;
            background-color: #C4D8F0;
            margin: 0;
        }
        #outer
        {
            height: 100%;
            overflow: hidden;
            position: relative;
            width: 100%;
        }
        html #outer
        {
            display: table;
            position: static;
        }
        #middle
        {
            position: absolute;
            top: 50%;
            width: 100%;
            text-align: center;
        }
        html #middle
        {
            display: table-cell;
            vertical-align: middle;
            position: static;
            text-align: center;
        }
        .login-main
        {
            width: 695px;
            height: 497px;
            background: url(images/bg_login.png) no-repeat;
            display: inline-block;
            position: relative; /*            
            position: absolute; top: 50%; left: 50%; margin-top: -280px; margin-left: -440px*/
        }
        .icon
        {
            width: 157px;
            height: 157px;
            background: url(images/key.png) no-repeat;
            position: absolute;
            left: 130px;
            top: 150px;
        }
        .welcome
        {
            width: 134px;
            line-height: 40px;
            vertical-align: middle;
            height: 40px;
            background: url(images/welcome.png) no-repeat;
            position: absolute;
            left: 130px;
            top: 60px;
            color: White;
            font-size: 18px;
        }
        .copyright
        {
            width: 695px;
            position: absolute;
            bottom: 100px;
            left: 0px;
            color: #2760a5;
            font-weight: bold;
        }
        .lable
        {
            font-weight: bold;
            color: #2b2b2b;
        }
        a.forgot-password
        {
            color: #2760a5;
            font-weight: bold;
            text-decoration: none;
        }
        a.forgot-password:hover
        {
            text-decoration: underline;
        }
        .form-login
        {
            position: absolute;
            left: 307px;
            top: 160px;
        }
        .txt
        {
            width: 195px;
            height: 20px;
            border: 1px solid #ADC5E2;
        }
        .btn
        {
            border: 0px solid white;
            background: url(images/login.png) no-repeat;
            width: 78px;
            height: 29px;
            color: White;
            font-weight: bold;
        }
        .auto-style1 {
            height: 161px;
            width: 243px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div id="outer">
        <div id="middle">
            <div class="login-main">
                <div class="icon">
                </div>
                <div class="welcome">
                    WELCOME</div>s
                <div class="copyright">
                    Copyright Minh Giảng.</div>
                <div id="Panel1" onkeypress="javascript:return WebForm_FireDefaultButton(event, &#39;Button1&#39;)">
	
                <div class="form-login">
                    <table cellpadding="4" cellspacing="4" class="auto-style1">
                        <tbody><tr>
                            <td class="lable">
                                <asp:Label ID="Label1" runat="server" Text="Username"/>
                            </td>
                            <td>
                                <asp:TextBox ID="txtUsername" runat="server"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="lable">
                                <asp:Label ID="Label2" runat="server" Text="Password"/>
                            </td>
                            <td>
                            <asp:TextBox ID="txtPassword" runat="server" EnableTheming="True" TextMode="Password" OnTextChanged="txtPassword_TextChanged"/>
                                
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                
                            </td>
                            <td align="left">
                                
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td align="right">
                                <asp:Button ID="btnDangNhap" runat="server" Text="Đăng Nhập" OnClick="btnDangNhap_Click" />
                            </td>
                        </tr>
                    </tbody></table>
          
                </div>
</div>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </div>
        </div>
    </div>
    </form>
</body></html>