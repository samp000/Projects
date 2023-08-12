<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="residential_service.aspx.cs" Inherits="LoginPage3.html.residential_service" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <div class="main_content">
      <div class="info_section">
        <h2>Residential Security</h2>
        <img src="../images/Residential_Security.jpg" alt="" />

        <p>
          We Providing Security in Residential areas like Bungalows, Housing
          complexes, and Co-operative housing societies, Management of vendors,
          domestic servants, providing security to senior citizens living alone,
          operation of intercom, elevator.<br /><br />
          OSSentinel Safeguard Services is dedicated to every client we serve.
          All management is on call 24/7 to address any concerns or questions
          clients may have.
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
