<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="Header.jsp"%>
 <!-- ======= Header ======= -->
 <header id="header" class="fixed-top">
  <div class="container d-flex align-items-center">

      <h1 class="logo mr-auto"><a href="/">Technical Blogs</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav class="nav-menu d-none d-lg-block">
          <ul>
              <li class="active"><a href="#">Home</a></li>
              <li><a href="About.jsp">About</a></li>
              
              <li><a href="Contact.jsp">Contact</a></li>
              

          </ul>
        </nav><!-- .nav-menu -->

      

  </div>
</header><!-- End Header -->

<!-- ======= Hero Section ======= -->
<section id="hero" class="d-flex justify-content-center align-items-center">
  <div class="container position-relative" data-aos="zoom-in" data-aos-delay="100">
    <h1>Read Today,<br>Learn Today</h1>
    <h2>We are team of talented engineers providing you knowledge</h2>

  </div>
</section><!-- End Hero -->

<main id="main">

  <section style="padding: 30px 0px;"id="about" class="about">
    <div class="container" data-aos="fade-up">

      <div class="section-title">
        <h2>About</h2>
        <p>About Us</p>
      </div>

      <div class="row">
       
        <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content">
          <h3> About Technical Blogs </h3>
          <p class="font-italic">
            Technical blogging is a blog dedicated to the entrepreneurs succeed online.
            Our aim is to providing you the best & the latest technical news and updates.
            We are here to help you out.
          </p>
          <a href="/about" class="learn-more-btn">Learn More</a>
        </div>
      </div>
      <div class="container mx-auto content" data-aos="fade-left" data-aos-delay="100">
        <img src="assets/img/about.jpg" class="img-fluid" alt="">
        <ul>
          <h3> You don’t have to be a programmer or a startup founder to find the advice useful, but We’ll make a few assumptions here:</h3>
          <li><i class="icofont-check-circled"></i> You are smart.
          <li><i class="icofont-check-circled"></i> You are internet savvy. You don’t need to have what a domain name or a feed reader is explained to you.</li>
          <li><i class="icofont-check-circled"></i> You are not after a get-rich-quick scheme. Anything worthwhile requires real work and online businesses aren’t different in this regard.</li>
          <li><i class="icofont-check-circled"></i> You dislike bullshit as much as I do, but you are not opposed to the idea of promoting yourself or your business online in an ethical manner.</li>
        </li>
        </ul>
      </div>

    </div>
  </section><!-- End About Section -->




  <!-- ======= Features Section ======= -->
  <section style="padding-top: 20px;" id="features" class="features">
    <div class="container" data-aos="fade-up">

      <div class="section-title">
        <h2>Blogs</h2>
        <p>List of Blogs</p>
      </div>
      <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/technicalblogs" user="root" password=""/>
	<sql:query var="rs" dataSource="${db}">select id,title,content1 from posts</sql:query> 

      <div data-aos="zoom-in" data-aos-delay="100">

        
	<c:forEach items="${rs.rows}" var="post" begin="${begin_loop}" end="${end_loop}">
	 <div style="display: block;" class="icon-box">
         <form action="PostFetcher"><div class="container" style="overflow-y: scroll;">
         
         	<h2><c:out value="${post.title }"></c:out></h2>
            <input type="text" name="num" style="display:none" value="${post.id }">
             <c:out value="${fn:substring(post.content1,0,100)}..."></c:out>
             <input type="submit" value="View Full Article" >
         </div></form>
        </div>
 	</c:forEach>
 
 	 
   

        <div class="clearfix">
          <form action="currentPage" method="post"><input type="submit"></form>
          <form action="previousPage" method="post"><input type="submit" value="previous"></form>
        </div>
      </div>

    </div>
  </section><!-- End Features Section -->

  <!-- ======= Popular Courses Section ======= -->
  <section  style="padding-top: 20px;" id="features" class="features">
    <div class="container" data-aos="fade-up">

      <div class="section-title">
        <h2>Blogs</h2>
        <p>Popular Blogs</p>
      </div>
      <c:set var="num_of_time" value="0"></c:set>
      <c:set var="num_of_time" value="num_of_time+1"></c:set>
      <div class="container" data-aos="fade-up">
        <div style="display: block;" data-aos="zoom-in" data-aos-delay="100">

          
          <a href="/post/{{post.srno}}">
          <div style="display: block;" class="icon-box">
            
            <h2></h2><br>
            <div style="@media (min-width: 360px){display: none;};" id="content1">
             
            </div>


          </div></a>
          
        

        </div>
      </div>
    </div>
  </section><!-- End Popular Courses Section -->

  <!-- ======= Trainers Section ======= -->
  <section id="trainers" class="trainers">
    <div class="container" data-aos="fade-up">

      <div class="section-title">
        <h2>Writers</h2>
        <p>Our Professional Writers</p>
      </div>

      <div class="row" data-aos="zoom-in" data-aos-delay="100">
        <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
          <div class="member">
            <img src="img/trainers/trainer-1.jpg" height="384" class="img-fluid" alt="">
            <div class="member-content">
              <h4>Naman Mistry</h4>
              <span>Web Development</span>
              <p>
                Magni qui quod omnis unde et eos fuga et exercitationem. Odio veritatis perspiciatis quaerat qui aut aut
                aut
              </p>
              <div class="social">
                
                <a href="https://www.facebook.com/rajnikant.mistry.902" target="_blank"><i class="icofont-facebook"></i></a>
                <a href="https://www.instagram.com/naman.mistry/" target="_blank"><i class="icofont-instagram"></i></a>
                
              </div>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
          <div class="member">
            <img src="img/trainers/priyanshu.jpeg " height="336" class="img-fluid" alt="">
            <div class="member-content">
              <h4>Priyanshu Gohil</h4>
              <span>Marketing</span>
              <p>
                Repellat fugiat adipisci nemo illum nesciunt voluptas repellendus. In architecto rerum rerum temporibus
              </p>
              <div class="social">
                
                <a href="https://www.facebook.com/priyanshu.gohil.98" target="_blank"><i class="icofont-facebook"></i></a>
                <a href="https://www.instagram.com/gohil_priyanshu_11555/" target="_blank"><i class="icofont-instagram"></i></a>
                
              </div>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
          <div class="member">
            <img src="img/trainers/aditya.jpg" height="336" class="img-fluid" alt="">
            <div class="member-content">
              <h4>Aditya kansara</h4>
              <span>Content</span>
              <p>
                Voluptas necessitatibus occaecati quia. Earum totam consequuntur qui porro et laborum toro des clara
              </p>
              <div class="social">
                
                <a href="https://www.facebook.com/aditya.kansara.422" target="_blank"><i class="icofont-facebook"></i></a>
                <a href="https://www.instagram.com/aditya___kansara/" target="_blank"><i class="icofont-instagram"></i></a>
                
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
          <div class="member">
            <img src="img/trainers/deep1.jpeg" height="336" class="img-fluid" alt="">
            <div class="member-content">
              <h4>Deep jaha</h4>
              <span>Content</span>
              <p>
                Voluptas necessitatibus occaecati quia. Earum totam consequuntur qui porro et laborum toro des clara
              </p>
              <div class="social">
                
                <a href="https://m.facebook.com/deep.jaha.5" target="_blank"><i class="icofont-facebook"></i></a>
                <a href="https://www.instagram.com/d_s_jaha/" target="_blank"><i class="icofont-instagram"></i></a>
                
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>
  </section><!-- End Trainers Section -->
  
  
  <%@ include file="Footer.jsp"%>