<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="LoginPage3.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div id="contact_form_container">

        <fieldset>
            <legend>Contact</legend>

            <asp:TextBox ID="txtfname" runat="server" TextMode="SingleLine" CssClass="txtcontactbx" placeholder="Your name.."></asp:TextBox>
            <asp:TextBox ID="txtemail" runat="server" TextMode="Email" CssClass="txtcontactbx" placeholder="Enter Your Email.."></asp:TextBox>

            <asp:TextBox ID="txtsubject" runat="server" TextMode="MultiLine" CssClass="txtcontactbx" placeholder="Enter Your Message.."></asp:TextBox>


            <asp:Button ID="submit_btn" class="submit" runat="server" Text="Submit" OnClick="submit_btn_Click" />
        </fieldset>

    </div>


</asp:Content>
