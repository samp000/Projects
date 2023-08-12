<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="GetguardForm.aspx.cs" Inherits="LoginPage3.GetguardForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <div class="form-popup" id="myForm" name="Get_Guard">
      <div
        class="form_get_guard_container"
        id="form_get_guard_container"
        name="getGuardForm"
      >
          <asp:TextBox ID="cust_name" CssClass="cust_name"  runat="server"  placeholder="Enter Full Name" ></asp:TextBox>
      
          <asp:TextBox ID="cust_email" CssClass="cust_email"  runat="server"  placeholder="Enter Email"></asp:TextBox>

          <asp:TextBox ID="cust_phno" CssClass="cust_phno"  runat="server" TextMode="Phone" placeholder="Enter Phone Numbe"></asp:TextBox>

          <asp:TextBox ID="cust_Addr" CssClass="cust_Addr"  runat="server"  placeholder="Enter your address"></asp:TextBox>
          <asp:TextBox ID="noOf_guards" CssClass="cust_noOfguards"  runat="server" TextMode="Number" placeholder="Enter No of Gurds Require"></asp:TextBox>
          <asp:Button ID="submit_guard_btn" class="submit"   runat="server" Text="Submit" OnClick="submit_guard_btn_Click" />
      </div>
    </div>


</asp:Content>
