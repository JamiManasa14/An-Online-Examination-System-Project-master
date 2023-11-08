login.aspx
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login - Online exam sytem</title>
    <!-- Bootstrap core CSS-->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for login-->
    <link href="assets/css/custom.css" rel="stylesheet">
</head>

<body class="bg-dark">
    <div class="container">
        <div class="card card-login mx-auto mt-5">
            <div class="card-header">Login</div>
            <div class="card-body">
                <form runat="server" id="formlogin">
                    <asp:Panel ID="pnl_warning" runat="server" Visible="false">
                    <div class="form-group card-header text-center">
                        <div class="alert-danger">
                        <asp:Label ID="lbl_warning" runat="server" Text="Label" CssClass="col-form-label text-center"></asp:Label>
                        </div>
                    </div>
                    </asp:Panel>
                    <div class="form-group">
                        <div class="form-row">
                            
                            <div class="col-md-6">
                            <label for="exampleInputEmail1">ID</label>
                            
                            <asp:TextBox ID="txt_id" runat="server" CssClass="form-control" placeholder="Enter id" TextMode="singleline"></asp:TextBox>
                              
                            </div>
                            <div class="col-md-6">
                                <!--<label for="exampleInputEmail1"></label>-->
                               <Label>ㅤㅤ</Label>
                                 <asp:Button ID="Button5" runat="server" Text="DATA" CssClass="btn btn-primary btn-block" OnClick="Button5_Click" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                                <label for="exampleInputPassword1">mail</label>
                                <asp:TextBox ID="txt_mail" runat="server" CssClass="form-control"  TextMode="Email"></asp:TextBox>
                            
                            
                        
                            
                        </div>
                   <asp:Button ID="Button3" runat="server" Text="Log In" CssClass="btn btn-primary btn-block" OnClick="Button3_Click" />
                    <div class="form-group">
                         <label for="exampleInputPassword1">otp</label>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter password" TextMode="Number"></asp:TextBox>
                        </div>
                  
                    <asp:Button ID="btn_login" runat="server" Text="Get OTP" CssClass="btn btn-primary btn-block" OnClick="btn_login_Click" />
                    <div class="text-center">
                        <a class="d-block small mt-3" href="admin/login.aspx">Admin Login</a>
                        <a class="d-block small" href="forgot-password.aspx">Forgot Password?</a>
                    </div>
                </form>

            </div>
        </div>
    </div>
    </body>

</html>
