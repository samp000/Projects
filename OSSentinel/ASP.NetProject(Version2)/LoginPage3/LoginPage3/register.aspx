<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="LoginPage3.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="style.css"/>
    <link rel="stylesheet"  href="css/forms.css"/>
</head>
<body>


    <form id="regform" runat="server" >
         <div class="form_container">
        <div class="regForm">

              <fieldset>
                <legend>Register</legend>


            <table align="center">

                <tr>
                    <td>Full Name</td>
                    <td><asp:TextBox ID="txtName" CssClass="regtxtbx" runat="server" placeholder="Enter Your Full Name"></asp:TextBox></td>
                </tr>

                 <tr>
                    <td>Address</td>
                    <td><asp:TextBox ID="txtAddr" CssClass="regtxtbx" runat="server" placeholder="Enter Address"></asp:TextBox></td>
                </tr>

                 <tr>
                    <td>Gender</td>
                    <td><asp:RadioButton GroupName="user" ID="RadioButton1" runat="server" Text="Male" OnCheckedChanged="RadioButton1_CheckedChanged"/><br />
                        <asp:RadioButton GroupName="user" ID="RadioButton2" runat="server" Text="Female" OnCheckedChanged="RadioButton2_CheckedChanged"/><br/>
                        <asp:RadioButton GroupName="user" ID="RadioButton3" runat="server"  Text="Others" OnCheckedChanged="RadioButton3_CheckedChanged"/>
                    </td>
                </tr>

                 <tr>
                    <td>Phone</td>
                    <td><asp:TextBox ID="txtPhone" CssClass="regtxtbx" runat="server" placeholder="+91-432-5432-321"></asp:TextBox></td>
                </tr>

                 <tr>
                    <td>Email</td>
                    <td><asp:TextBox ID="txtEmail" CssClass="regtxtbx" runat="server" placeholder="example@example.com" TextMode="Email"></asp:TextBox></td>
                </tr>

                 <tr>
                    <td>UserName</td>
                    <td><asp:TextBox ID="txtuser" CssClass="regtxtbx" runat="server" placeholder="Enter Username"></asp:TextBox></td>
                </tr>

                 <tr>
                    <td>Password</td>
                    <td><asp:TextBox ID="txtPass" CssClass="regtxtbx" runat="server" placeholder="******" TextMode="Password"></asp:TextBox></td>
                </tr>

                <tr>
                    <td></td>
                    <td align="right">
                        <asp:Button ID="btnreg" CssClass="reg_btn"  Text="Register" runat="server" OnClick="btnreg_Click"  />
                    </td>
                </tr>


                <tr>

                    <td>&nbsp;</td>
                    <td >
                            <asp:Label ID="already_reg_string" runat="server" Text="Already Registered"></asp:Label>
                    </td>

                </tr><br />

                <tr>
                    <td></td>
                    <td align="right"><asp:Button ID="gotologin" CssClass="login_btn"  Text ="User Login" runat="server" OnClick="gotologin_Click" /></td>
                </tr>

                  <tr>
                    <td></td>
                    <td align="right"><asp:Button ID="gotoadminlogin" CssClass="login_btn"  Text ="Admin Login" runat="server" OnClick="gotoadminlogin_Click"  /></td>
                </tr>

            </table>

                  </fieldset>

        </div>
    </form>
</body>
</html>
