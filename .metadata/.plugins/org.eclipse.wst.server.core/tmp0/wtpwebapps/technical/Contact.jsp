<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="Header.jsp" %>
 <!-- ======= Header ======= -->
 <header id="header" class="fixed-top">
  <div class="container d-flex align-items-center">

      <h1 class="logo mr-auto"><a href="index.html">Technical Blogs</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav class="nav-menu d-none d-lg-block">
          <ul>
              <li ><a href="index.jsp">Home</a></li>
              <li><a href="About.jsp">About</a></li>
              
              <li class="active"><a href="#">Contact</a></li>
            
        
          </ul>
        </nav><!-- .nav-menu -->

      

  </div>
</header><!-- End Header -->
  <main id="main">

    

    <!-- ======= Contact Section ======= -->
    <section style="padding-top: 100px;" id="contact" class="contact">
      

      <div class="container" data-aos="fade-up">

        <div class="row mt-5">

          <div class="col-lg-4">
            <div class="info">
              

              <div class="email">
                <i class="icofont-envelope"></i>
                <h4>Email:</h4>
                <p>fighter7415963@gmail.com</p>
              </div>

              <div class="phone">
                <i class="icofont-phone"></i>
                <h4>Call:</h4>
                <p>9157911555</p>
              </div>

            </div>

          </div>

          <div class="col-lg-8 mt-5 mt-lg-0">
            <div class="section-title">
              <h2>Contact</h2>
              <p>Contact  us  Form</p>
            </div>
              <form action="Contact" method="post" class="php-email-form">
            <div class="form-row">
              <div class="col-md-6 form-group">
                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name"
                  data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validate"></div>
              </div>
              <div class="col-md-6 form-group">
                <input type="email" class="form-control" name="email" id="email" placeholder="Your Email"
                  data-rule="email" data-msg="Please enter a valid email" />
                <div class="validate"></div>
              </div>
            </div>
            <div class="form-group">
              <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject"
                data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
              <div class="validate"></div>
            </div>
            <div class="form-group">
              <textarea class="form-control" name="message" rows="5" data-rule="required"
                data-msg="Please write something for us" placeholder="Message"></textarea>
              <div class="validate"></div>
            </div>

            <button onclick="myfunc()" class="btn btn-block" style="border-radius: 15px; background-color: #5f86cf;"
              type="submit">Send Message</button>
          </form>

          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->
<%@ include file="Footer.jsp" %>
