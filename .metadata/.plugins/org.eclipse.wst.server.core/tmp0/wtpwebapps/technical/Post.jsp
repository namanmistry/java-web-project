<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="Header.jsp"%>
<%@ page import="java.io.*"%>

<%@ page import="java.sql.*,java.util.*"%>
<!-- ======= Header ======= -->
<header id="header" class="fixed-top">
  <div class="container d-flex align-items-center">

    <h1 class="logo mr-auto"><a href="index.html">Technical Blogs</a></h1>
    <!-- Uncomment below if you prefer to use an image logo -->
    <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

    

    <nav class="nav-menu d-none d-lg-block">
      <ul>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="About.jsp">About</a></li>
        <li><a href="Contact.jsp">Contact</a></li>
       
      </ul>
    </nav><!-- .nav-menu -->



  </div>
</header><!-- End Header -->

  <main id="main">


    <!-- ======= Cource Details Section ======= -->
    <section id="course-details" class="course-details">
      <div class="container" data-aos="fade-up">
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/technicalblogs" user="root" password=""/>
	<sql:query var="rs" dataSource="${db}">select id,title,content1,content2,content3,content4,content5,content6,content7,content8,content9,content10,likes from posts
where id='${num}';</sql:query> 
        <div class="row">
          <div class="col-lg-8">
          <c:forEach items="${rs.rows}" var="post">
            <h3>${post.title}</h3>
          
             ${post.content1}
             
             ${post.content2}
   
             ${post.content3}
            
             ${post.content4}
       
             ${post.content5}
           
             ${post.content6}

             ${post.content7}
             
             ${post.content8}
             
             ${post.content9}
           
             ${post.content10}
            
             <h3>${post.likes}</h3><br>
            
           <h1><b><a href="likes?id=<c:out value="${post.id}"/>">Like</a></b></h1> 
              </c:forEach>
                 
                  
                
              
              
        
              

              
              
              
              <div class="count">
                <label id="count"></label>
              </div>
          </div>
         
             

      </div>
      
    </section><!-- End Cource Details Section -->

   
    
  </main><!-- End #main -->

  <%@ include file="Footer.jsp"%>