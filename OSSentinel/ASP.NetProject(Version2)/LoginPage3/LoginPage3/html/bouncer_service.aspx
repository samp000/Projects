<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="bouncer_service.aspx.cs" Inherits="LoginPage3.html.bouncer_service" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <div class="main_content">
      <div class="info_section">
        <h2>Bouncer Guard Services</h2>
        <img src="../images/bouncer_services.jpg" alt="" />

        <p>
          Comprehending the important tasks of safety and security, especially
          while dealing with drunk peoples or personel bodyguard.We provide
          bouncers for that purpose. <br />
          With vast experience and knowledge we are offering to our valuable
          clients Bouncer Security Guards. They are well trained to perform
          security checkups of peoples in bars,nightclubs, casinos and various
          other places. These security guards are recruited by our highly
          skilled professionals to meet the variegated preferences of our
          clients.
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

