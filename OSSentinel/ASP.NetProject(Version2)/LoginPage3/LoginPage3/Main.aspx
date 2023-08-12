
<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="LoginPage3.WebForm1"  MaintainScrollPositionOnPostback="true"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server" >

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- Slideshow Container --%>
    <div class="slideshow_container">
    <div class="slide_img">
      <div class="mySlides fade">
        <img src="./images/img1.jpg" class="bann-img" />
        <h2 class="img_text fade">A Power That Saves You.</h2>
      </div>

      <div class="mySlides fade">
        <img src="./images/img2.jpg" class="bann-img" />
        <h2 class="img_text fade">Our Commitment is Keeping you Safe.</h2>
      </div>

      <div class="mySlides fade">
        <img src="./images/img3.jpg" class="bann-img" />
        <h2 class="img_text fade">
          Professionalism and experience are our keys.
        </h2>
      </div>

      <div class="mySlides fade">
        <img src="./images/img4.jpg" class="bann-img" />
        <h2 class="img_text fade">Your Security is Our Priority.</h2>
      </div>
    </div>
  </div>

    <%-- Features Container --%>
    <div class="features_container">
    <div class="heading_features">
      <h1>Features</h1>
      <p>
        OSSentinel Services providing both physical safety as well as peace of
        mind to its clients. "Quality is our Aim"
      </p>
    </div>

    <div class="features_list">
      <div class="feature_card">
        <div class="feature_logo logo">
          <img src="./logos/businessman.svg" class="logo-img" width="50px" />
        </div>

        <div class="feature_info">
          <h2>Professionalism</h2>
          <p>
            OSSentinel Services is an organization functioning on the lines of
            professionalism.
          </p>
        </div>
      </div>

      <div class="feature_card">
        <div class="feature_logo logo">
          <img src="./logos/biceps.svg" class="logo-img" width="50px" />
        </div>

        <div class="feature_info">
          <h2>Strong Security Person</h2>
          <p>
            Security personnel provided by us are physically capable and
            mentally sharp to detect any change in normal activities.
          </p>
        </div>
      </div>

      <div class="feature_card">
        <div class="feature_logo logo" >
          <img src="./logos/security-guard.svg" class="logo-img" width="50px" />
        </div>

        <div class="feature_info">
          <h2>Female Security</h2>
          <p>Female security aims to protect especially females.</p>
        </div>
      </div>

      <div class="feature_card">
        <div class="feature_logo logo" >
          <img src="./logos/taekwondo-kick.svg" class="logo-img" width="50px" />
        </div>

        <div class="feature_info">
          <h2>Trained Security Guards</h2>
          <p>
            Security personnel provided by us are physically capable and
            mentally sharp to detect any change in normal activities.
          </p>
        </div>
      </div>

      <div class="feature_card">
        <div class="feature_logo logo" >
          <img src="./logos/gun.svg" class="logo-img" width="50px" />
        </div>
        <div class="feature_info">
          <h2>Armed Security</h2>
          <p>Our security guards are available in armed security services.</p>
        </div>
      </div>

      <div class="feature_card">
        <div class="feature_logo logo" >
          <img src="./logos/24-hours.svg" class="logo-img" width="50px" />
        </div>
        <div class="feature_info">
          <h2>Available 24/7</h2>
          <p>
            Our security guards are available 24/7 you can get service any
            time
          </p>
        </div>
      </div>
    </div>
  </div>

    <%-- Loader --%>
  <div class="loader_container">
    <div class="loader">
      <div class="rect1"></div>
      <div class="rect2"></div>
      <div class="rect3"></div>
      <div class="rect4"></div>
      <div class="rect5"></div>
    </div>
  </div>

      <%-- Services --%>
  <div class="services_container" id="services">
    <div class="heading_services">
      <h1>Our Security Services</h1>
      <p>
        We render cost-effective and dependable Security Services that include
        Bouncer Services, Security Supervisor Services and Security Guard
        Services.
      </p>
    </div>
    <div class="services_list">
      <div class="service_card">
        <h3>Armed Security</h3>
        <p>We provide armed security services</p>
        <a href="html/armed_service.aspx"><i>Read more...</i></a>
      </div>

      <div class="service_card">
        <h3>Event Security</h3>
        <p>We provide special security squad for mega-events.</p>
        <a href="html/event_service.aspx"><i>Read more...</i></a>
      </div>

      <div class="service_card">
        <h3>Security Officer</h3>
        <p>We Providing Experienced Security Guards.</p>
        <a href="html/securityofficer_service.aspx"><i>Read more...</i></a>
      </div>

      <div class="service_card">
        <h3>Lady Security Guard</h3>
        <p>Trained and devoted lady security officers.</p>
        <a href="html/ledysecurity_service.aspx"><i>Read more...</i></a>
      </div>

      <div class="service_card">
        <h3>Bouncer Security</h3>
        <p>Providing strong and fit bouncers for special venues.</p>
        <a href="html/bouncer_service.aspx"><i>Read more...</i></a>
      </div>

      <div class="service_card">
        <h3>Residential Security</h3>
        <p>We Providing Security for Residential areas.</p>
        <a href="html/residential_service.aspx"><i>Read more...</i></a>
      </div>

      <div class="service_card">
        <h3>Security Supervisor</h3>
        <p>
          We Are Providing Affordable Security Supervisor Services in Pune.
        </p>
        <a href="html/supervisor_service.aspx"><i>Read more...</i></a>
      </div>

      <div class="service_card">
        <h3>Security services for Hotels</h3>
        <p>We are Providing Security services for Hotels.</p>
        <a href="html/hotel_service.aspx"><i>Read more...</i></a>
      </div>
    </div>
  </div>

     <%-- About Us  --%>
  <div class="about_us_container" id="about">
    <div class="about_us">
      <h1>About us</h1>
      <p>
        OSSentinel is located at Vadgaon BK. , Pune (Maharashtra). We are
        headed by a team of highly qualified mentors. Their valuable service
        experience has always guided us in understanding the needs of the
        clients successfully and meeting the specific security requirements
        efficiently. highly qualified mentors. Their valuable service
        experience has always guided us in understanding the needs of the
        clients successfully and meeting the specific security requirements
        efficiently.<span id="dots">...</span>
      </p>
      <br />
      <span id="more">
        <p>
          Based at Pune, OSSentinel is one of the most trustworthy Service
          Providers engaged in offering reliable Security Services. We render
          cost-effective and dependable Security Services that include Bouncer
          Services, Security Supervisor Services and Security Guard Services.
        </p>
        <br />

        <p>
          We provide a team of well-trained guarding force, dedicated bouncers
          and disciplined security personnel who can work under stressful
          situations and can be completely relied upon. Owing to the
          customized availability and reasonable charges of our Security
          Services many banks, consulates, shipping companies, security
          agencies, departmental stores, hospitals, airlines, jewelry
          manufacturers, clubs, hotels, government establishments, etc., have
          bestowed their trust upon us.
        </p>
      </span>

      <asp:button onclick="expand()" ID="expandBtn" >Read more ...</asp:button>
    </div>

    <div class="accordion_container">
      <details open>
        <summary>Our Resources</summary>
        At OSSentinel, our team of guards and security guards represents us.
        Our standards and pride is reflected by their personality and
        performance. So, to make sure that high standards in quality and
        reliability are achieved, we select the security personnel after
        carefully screening aspects like interest, courtesy, motivation as
        well as integrity.
      </details>

      <details>
        <summary>We Care To</summary>
        With our reliable Security Services, we serve : Legal Agencies Banks
        Clubs Housing and Co-operative societies Corporate & Business Houses
        Insurance Companies Co-operative firms Multinationals
      </details>

      <details>
        <summary>Why Choose Us</summary>
        <h3>
          The prominent factors that make us a preferred choice of the clients
          are
        </h3>
        <ul>
          <li>High level & customized services</li>
          <li>Trained personnel</li>
          <li>Complete customer satisfaction</li>
          <li>
            Provision of additional security personnel with ceremonial uniform
          </li>
          <li>Timely execution</li>
          <li>Reasonable charges.</li>
        </ul>
      </details>
    </div>
  </div>


       <%--Contact Us--%>
      <div class="Contactus_container" id="contact">
   
           <!-- Tab links -->

    <div class="tab_container">
      <div class="tab">
        <asp:button class="tablinks" id="defaultOpen" onclick="openTab(event, 'contacttb')">
          CONTACT
        </asp:button>
      </div>

      <!-- Tab content -->
      <div id="contacttb" class="tabcontent">
        <h2>OSSentinel</h2>
        <i class="fas fa-map-marker-alt"></i>
        Address: Vadgaon BK,Sinhagad Road<br />
        Pune-411041,Maharastra
        <br /><br />
        <i class="fas fa-phone-volume"></i>
        Call Us: +91-8080152020
        <br /><br />
        <i class="fas fa-envelope"></i>
        Email:OSSentinel@gmail.com
      </div>

<%--      <div id="careerpof" class="tabcontent">
        <h2>SECURITY GUARD</h2>
        Qualification :
        <ul>
          <li>10-12 passed</li>
          <li>1 Year Experience</li>
        </ul>
        <p>
          A young dynamic organization with the ability to offer you the
          growth you look for. If you are keen, if you are ambitious, with a
          can-do attitude and you are looking for a career that will give you
          the scope for personal development with a young and thriving
          business that's really going places.
        </p>

        --Mail your CV: <a href="mailto:sandeshdmarathe333@gmmail.com">OSSentinel@gmail.com</a>
      </div>

      <div id="training" class="tabcontent">
        <h2>TRAINING</h2>
        <ul>
          <li>
            A Quality security training program can improve organizational
            performance and overall productivity as well as reduce potential
            loss of life.
          </li>
          <li>We conduct training for our security personnel.</li>
          <li>
            In this training we train them about their Job responsibilities,
            fire fighting, soft skills, First aid, Body frisking etc.
          </li>
        </ul>

      </div>--%>
    </div>
       <div class="contact_form">

      <div class="contact_form_container">
          <h2>You can contact through this contact button <br />
              It will take you to contact form page 
          </h2>
              <asp:HyperLink ID="contact_form" CssClass="submit" NavigateUrl="~/Contact.aspx"  runat="server">Contact</asp:HyperLink>

      </div>
    </div>

       <div class="thankyou_container" id="thankyou_container">
           <div class="message">
      <h3>Your form is submitted</h3>
    <asp:button class="okbtn" onclick="disableContactThanku()">Ok</asp:button>
    </div>
  </div>

       </div>



     <footer class="footer_container">
    <div class="foot_main_container">
      <div class="logo_container">
        <div class="logo">
          <a href="Main.aspx" class="footer_logo" id="navbar_logo">OSSentinel</a>
        </div>
        <h3>safety is here</h3>
      </div>

      <div class="footer_info_container">
        <div class="explore">
          <h3>Explore</h3>
          <ul>
            <li><a href="#home">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Careers</a></li>
            <li><a href="#Capabilities">Capabilities</a></li>
          </ul>
        </div>
        <div class="visit">
          <h3>Visit</h3>
          India,Maharastra <br />
          Pune 41 vadgaon bk<br />
          Sinhagad Road
        </div>
        <div class="Legal">
          <h3>Legal</h3>
          <ul>
            <li><a href="./html/terms.html">Terms</a></li>

            <input type="button" class="feedback_btn" id="feed_btn" name="getGuard" value="Feedback"
              onclick="openFeedback()" />
            <li></li>
          </ul>
        </div>

        <div class="footer_icons">
          <ul>
            <li>
              <a href="https://www.facebook.com"><i class="fab fa-facebook"></i></a>
            </li>

            <li>
              <a href="https://api.whatsapp.com/send?phone=+918010785396" target="_blank"><i
                  class="fab fa-whatsapp"></i></a>
            </li>

            <li>
              <a href="https://www.instagram.com"><i class="fab fa-instagram"></i></a>
            </li>

            <li>
              <a href="https://www.twitter.com"><i class="fab fa-twitter"></i></a>
            </li>
          </ul>
        </div>
      </div>
    </div>

    <div class="copy_right_container">
      &#169; 2021 OSSentinel. All Rights Reserved
    </div>
  </footer>

     <div class="feedback_container" id="feed_container">
    <i class="far fa-times-circle" onclick="closefeedForm()"></i>
    <div class="star-rating">
      <div class="thanks-msg">Thanks for your feedback !!!</div>
      <div class="star-input">
        <input type="radio" name="rating" id="rating-5" />
        <label for="rating-5" class="fas fa-star"></label>
        <input type="radio" name="rating" id="rating-4" />
        <label for="rating-4" class="fas fa-star"></label>
        <input type="radio" name="rating" id="rating-3" />
        <label for="rating-3" class="fas fa-star"></label>
        <input type="radio" name="rating" id="rating-2" />
        <label for="rating-2" class="fas fa-star"></label>
        <input type="radio" name="rating" id="rating-1" />
        <label for="rating-1" class="fas fa-star"></label>

        <!-- Rating Submit Form -->
        <form>
          <span class="rating-reaction"></span>
          <button type="submit" class="submit-rating">Submit</button>
        </form>
      </div>
    </div>
  </div>

</asp:Content>
