<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="armed_service.aspx.cs" Inherits="LoginPage3.html.armed_service" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <div class="main_content">
      <div class="info_section">
        <h2>Armed Security Services</h2>
        <img src="../images/armed.jpg" alt="armed Guard" />

          <p>
              We have developed a multifaceted infrastructure facility today for
          providing best in class Armed Security. Our facility is equipped with
          varied training facilities and advanced technologies that helps us in
          meeting the increasing demands of the clients. Safety has emerged out
          as one of the most common concerns in the 21st century. If you are
          also looking to avail Security Guard Services in India, then get in
          touch with Om Sai Safeguard Services. Security Guards provided by us,
          are serving well in top companies across the city. Prior to
          recruitment, we make sure that they are deft in activities like crime
          prevention, risk management, etc.<br />
              <br />
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
