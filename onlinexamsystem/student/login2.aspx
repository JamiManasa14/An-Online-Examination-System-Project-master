


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QUIZ</title>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
     <link href="assets/css/style.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    
</head>
<body class="bg-dark">
<div id="tag" style="display:flex; margin-left:1rem;margin-top:5rem;">
        <center><div class="holecontain" style="
            width: 50%;">
    <span><center><div class="form-container" id="stud">
        <div id="student">
        <div class="control">
                <div>
                <table>
                    <div>
                    <tr>
                        <td >
                            <div class="control2" style="display:flex">
                                <label for="name"style="margin-top:25px;">ID:</label>
                            </div>
                        </td>
                        <td >
                            <div class="control2" style="display:flex,width=250px">
                                <input type="text" name="id" id="txt_roll.Text">
                            </div>
                        </td>
                    </tr>
                    </div>
                    <tr>
                        <td>
                            <div class="control2" style="display:flex">
                                <label for="name" style="margin-top:25px; ">NAME:</label>
                            </div>
                        </td>
                        <td >
                            <div class="control2" style="display:flex,width=250px">
                                <input type="text" name="name" id="txt_name.Text" >
                            </div>
                        </td>
                    </tr>            
                    <tr>
                        <td >
                            <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <asp:TextBox ID="txt_email" runat="server" CssClass="form-control" placeholder="Enter email" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqr_emil" runat="server" ErrorMessage="Enter email" ControlToValidate="txt_email" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rqrexpre_email" runat="server" ErrorMessage="Enter validate email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt_email" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                        </td>
                        <td >
                            <div class="control2" style="display:flex,width=250px">
                                <input type="text" name="mail" id=" txt_email.Text " >  </div>
                        </td>
                    </tr>
                    <!-- <div class="control3">
                        <input type="submit" name="submit" value="GET OTP">
                    </div> -->
                    <tr>
                        <td >
                            <div class="control2" style="display:flex">
                                <label for="name" style="margin-top:25px;">OTP:</label>
                            </div>
                        </td>
                        <td >
                            <div class="control2" style="display:flex,width=250px">
                                <input type="text" name="OTP" id="txt_otp.Text" >
                            </div>
                        </td>
                    </tr>        
            </table>       
        </div>        
        <div class="control3">
            <form action="QPAGE.html" >
            <input type="submit" name="submit" value="LOGIN">
        </form>
        </div>
    </div>
    </div></center></span>
    
</body>

</html>