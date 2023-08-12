<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="event_service.aspx.cs" Inherits="LoginPage3.html.event_service" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


        <div class="main_content">
      <div class="info_section">
        <h2>Event Security Services</h2>
        <img src="../images/event.jpg" alt="" />

        <p>
          We provide special security squad for mega-events, exhibitions,
          cultural programs, etc. We provide supervise parking and direct
          traffic, provide security at the parking area, at all entry and exit
          points and station plain clothed guards at various points to provide
          maximum protection and security.We adhere to a great reputation in the
          current competitive market for being the prominent Event security
          service provider.<br />
          We cater these services to various events included product launches,
          sports events, trade shows exhibitions and corporate meets concerts.
          We believe in treating our customers with the highest degree of
          integrity. We have some of the most experienced and skilled security
          personals in our company who are well trained to provide these
          services.<br /></br>
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
