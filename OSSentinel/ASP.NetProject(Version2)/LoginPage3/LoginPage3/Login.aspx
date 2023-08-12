<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginPage3.Login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <div class="form_container">
        <div class="loginForm">

            <fieldset>
                <legend>Login</legend>
                <table align="center">
                    <tr>
                        <td>Username</td>
                        <td>
                            <asp:TextBox ID="txtUser" CssClass="logintxtbx" runat="server"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td>Password</td>
                        <td>
                            <asp:TextBox ID="txtPass" CssClass="logintxtbx" runat="server"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="Button" CssClass="login_btn" Text="Login" runat="server" OnClick="Button_Click" /></td>
                    </tr>
                </table>
            </fieldset>
        </div>

    </div>
</asp:Content>
