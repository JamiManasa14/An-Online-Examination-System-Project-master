<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sregister.aspx.cs" Inherits="register" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Register - Online exam sytem</title>
    <!-- Bootstrap core CSS-->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this register-->
    <link href="../assets/css/custom.css" rel="stylesheet">
</head>

<body class="bg-dark" style="background-image:url(../assets/image/F1.jpg);background-repeat:no-repeat;background-size: cover;" >
   
    <div class="container" style="margin-top:125px">
        <div class="card card-register mx-auto mt-5">
            <div class="card-header">Register an Account</div>
            <div class="card-body">
                <form runat="server" id="formregister">
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
                                <label for="exampleInputName">First name</label>
                                <asp:TextBox ID="txt_fname" runat="server" CssClass="form-control" placeholder="Enter first name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rqr_name" runat="server" ErrorMessage="Enter first name" ControlToValidate="txt_fname" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-6">
                                <label for="exampleInputLastName">Last name</label>
                                <asp:TextBox ID="txt_lname" runat="server" CssClass="form-control" placeholder="Enter last name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rqr_lname" runat="server" ErrorMessage="Enter last name" ControlToValidate="txt_lname" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <asp:TextBox ID="txt_email" runat="server" CssClass="form-control" placeholder="Enter email" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqr_emil" runat="server" ErrorMessage="Enter email" ControlToValidate="txt_email" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rqrexpre_email" runat="server" ErrorMessage="Enter validate email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  ControlToValidate="txt_email" Display="Dynamic" ForeColor="Red" ></asp:RegularExpressionValidator>
                          </div>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <label for="exampleInputSem">Semister</label>
                                <asp:TextBox ID="txt_sem" runat="server" CssClass="form-control" placeholder="Enter Semester" TextMode="number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rqr_sem" runat="server" ErrorMessage="enter valid semister" ControlToValidate="txt_sem" Display="Dynamic" ForeColor="Red" ControlToCompare="txt_sem" ></asp:RequiredFieldValidator>
                                 </div>
                            <div class="col-md-6">
                                <label for="exampleInputRollno">Roll_No</label>
                                <asp:TextBox ID="txt_roll" runat="server" CssClass="form-control" placeholder="Enter Roll NO" TextMode="SingleLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rqr_roll" runat="server" ErrorMessage="Enter roll no" ControlToValidate="txt_roll" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            
                        </div>
                    </div>
                    <asp:Button ID="btn_register" runat="server" Text="Register" CssClass="btn btn-primary btn-block" OnClick="btn_register_Click" />
                    <div class="text-center">
                        
                        <a class="d-block small" href="forgotpassword.aspx">Forgot Password?</a>
                    </div>
                </form>

            </div>
        </div>
    </div>

</body>

</html>

