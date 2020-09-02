<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="Header.jsp" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- ======= Header ======= -->
<header id="header" class="fixed-top">
  <div class="container d-flex align-items-center">

    <h1 class="logo mr-auto"><a href="index.html">Technical Blogs</a></h1>
    <!-- Uncomment below if you prefer to use an image logo -->
    <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->



    <nav class="nav-menu d-none d-lg-block">
      <ul>
        <li><a href="index.jsp">Home</a></li>
        <li class="active"><a href="#">About</a></li>
        <li><a href="Contact.jsp">Contact</a></li>

      </ul>
    </nav><!-- .nav-menu -->



  </div>
</header><!-- End Header -->
<main id="main">
  <!-- ======= about Section ======= -->
  <section id="about1" class="d-flex justify-content-center align-items-center">
    <div class="container position-relative" data-aos="zoom-in" data-aos-delay="100">


    </div>
  </section><!-- end about -->

  <!-- ======= About Section ======= -->
  <section id="about" class="about">
    <div class="container" data-aos="fade-up">

      <div class="row">

        <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
          <img src="assets/img/about.jpg" class="img-fluid" alt="">
        </div>
        <div style="padding-top: 50px !important;" class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content">
          <h1>About Technical Blogs </h1>
          <!-- <h3>Voluptatem dignissimos provident quasi corporis voluptates sit assumenda.</h3> -->
          <p class="font-italic">
            Technical blogging is a blog dedicated to the enterpreneurs succeed online.
            Our aim is to providing you the best & the latest technical news and updates.
            We are here to help you out.

          </p>
          <ul>
            <li><i class="icofont-check-circled"></i> 1.For the bloggers who want to start earning online by
              contributing their knowledge also bloggers can develop their knowledge in technical field.</li>
            <li><i class="icofont-check-circled"></i> 2.Technical persons who are interested in advancing their carrer
              by knowledge and increasing thier influence.</li>
            <li><i class="icofont-check-circled"></i> 3.Enterpreneurs who intend to use blogging as an internet
              marketing tooldor thier startup /bussiness.
            </li>
          </ul>
          <p>
            After a lot of discussions we had decided to build a blogging website to contribute something to society by us.
            Please give us your feddback to our website or content.
            We are trying to make it best but we'll can't do it without your experience sharing and feedback.
            Thanks for visiting.
            Good Day !!!
            
          </p>

        </div>
      </div>

    </div>
  </section><!-- End About Section -->


  <!-- ======= Testimonials Section ======= -->
  <section id="testimonials" class="testimonials">
    <div class="container" data-aos="fade-up">

      <div class="section-title">
        <h2>Testimonials</h2>
        <p>What are they saying</p>
      </div>

<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/technicalblogs" user="root" password=""/>
	<sql:query var="rs" dataSource="${db}">SELECT * FROM feedback
ORDER BY RAND()
LIMIT 10</sql:query> 

      <div class="owl-carousel testimonials-carousel" data-aos="zoom-in" data-aos-delay="100">
       	<c:forEach items="${rs.rows}" var="post" begin="0" end="1">
      <div class="testimonial-wrap">
            <a href="FeedBack_Viewer?id=<c:out value="${post.id}"/>">
            <div class="testimonial-item">
              <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
              <h3><c:out value="${post.name}"></c:out></h3>

              <p><c:out value="${post.message}"></c:out>
              </p>
             
            </div></a>
           
        </div>


	</c:forEach>
      </div>

      <!-- <div class="clearfix">
        <a style="background-color: #5f86cf ;" class="btn btn-primary float-right" href="{{next}}">Next Posts &rarr;</a>
        <a style="background-color: #5f86cf ;" class="btn btn-primary float-left" href="{{prev}}">&larr; Previous Posts
        </a>
      </div> -->
    </div>
  </section><!-- End Testimonials Section -->


  <section id="testimonials" class="testimonials">
    <div class="container" data-aos="fade-up">

      <div class="section-title">
        <h2>Feed Back</h2>
        <p>Feed Back Form</p>
      </div>
      <div class="row">
        <div class="col-lg-8 mt-3 mt-lg-0">

          <form action="FeedBack" method="post" class="php-email-form">
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
  </section><!-- End Testimonials Section -->


</main><!-- End #main -->

<%@ include file="Footer.jsp" %>