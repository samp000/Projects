<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="securityofficer_service.aspx.cs" Inherits="LoginPage3.html.securityofficer_service" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


      <div class="main_content">
      <div class="info_section">
        <h2>Security Officer</h2>
        <img src="../images/Security_Officer.jpg" alt="" />

        <p>
          In order to provide our clients with security covers, we offer them
          with experienced and proficient Security Guards. We have with us
          diligent recruiting agents who recruit the security guards only after
          they qualify all the tests which are meant to assess their physical
          and mental standards. The security guards recruited by us further have
          the ability to handle all manners of emergencies and contingencies.<br /><br />
          We provide all types of security services in all over India.
        </p>
      </div>
    </div>

    <!-- social media icons -->
    <div class="social">
      <ul>
        <li class="whatsapp">
          <a
            href="https://api.whatsapp.com/send?phone=+918010785396"
            target="_blank"
          >
            whatsapp
            <i class="fab fa-whatsapp"></i>
          </a>
        </li>
        <li class="facebook">
          <a href="https://facebook.com" target="_blank">
            Facebook
            <i class="fab fa-facebook"></i>
          </a>
        </li>
        <li class="instagram">
          <a href="https://instagram.com" target="_blank">
            Instagram
            <i class="fab fa-instagram"></i>
          </a>
        </li>
      </ul>
    </div>

    <div class="want_guard">
         <asp:Button ID="get_guard_btn" CssClass="getGuard" runat="server" Visible="false" Text="Get Guard" OnClick="get_guard_btn_Click" />
    </div>

   

    <div class="thankyou_container" id="thankyou_container">
      <div class="message">
        <h3>Your form is submitted</h3>
        <button class="okbtn" onclick="disableGetGuardThanku()">Ok</button>
      </div>
    </div>

    <script src="../app.js"></script>
    <script src="../js/service.js"></script>
</asp:Content>
